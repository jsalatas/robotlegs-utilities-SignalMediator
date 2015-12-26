package org.robotlegs.mvcs
{
	import org.osflash.signals.ISignal;
	import org.robotlegs.core.ISignalMap;
	import org.robotlegs.utilities.modular.mvcs.ModuleMediator;
	
	public class SignalModuleMediator extends ModuleMediator
	{
		protected var _signalMap:ISignalMap;
		
		public function SignalModuleMediator()
		{
			super();
		}
		
		override public function preRemove():void
		{
			signalMap.removeAll();
			super.preRemove();
		}
		
		protected function get signalMap():ISignalMap
		{
			return _signalMap ||= new SignalMap();
		}
		
		protected function addToSignal(signal:ISignal, handler:Function):void
		{
			signalMap.addToSignal(signal, handler);
		} 
		
		protected function addOnceToSignal(signal:ISignal, handler:Function):void
		{
			signalMap.addOnceToSignal(signal, handler);
		}
		
	}           
}
