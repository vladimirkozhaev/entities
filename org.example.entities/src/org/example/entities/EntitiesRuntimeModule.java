/*
 * generated by Xtext
 */
package org.example.entities;

import org.eclipse.xtext.generator.IOutputConfigurationProvider;
import org.example.entities.generator.EntitiesOutputConfigurationProvider;

/**
 * Use this class to register components to be used at runtime / without the
 * Equinox extension registry.
 */
public class EntitiesRuntimeModule extends
		org.example.entities.AbstractEntitiesRuntimeModule {
	public Class<? extends IOutputConfigurationProvider> bindIOutputConfigurationProvider() {
		return EntitiesOutputConfigurationProvider.class;
	}
}
