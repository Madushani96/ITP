/*
 * JasperReports - Free Java Reporting Library.
 * Copyright (C) 2001 - 2019 TIBCO Software Inc. All rights reserved.
 * http://www.jaspersoft.com
 *
 * Unless you have purchased a commercial license agreement from Jaspersoft,
 * the following license terms apply:
 *
 * This program is part of JasperReports.
 *
 * JasperReports is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * JasperReports is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with JasperReports. If not, see <http://www.gnu.org/licenses/>.
 */
package net.sf.jasperreports.chartthemes.simple;

import org.jfree.chart.block.BlockFrame;

/**
 * 
 * @author Lucian Chirita (lucianc@users.sourceforge.net)
 * @deprecated only used internally in {@link LegendSettings#setBlockFrame(BlockFrame)}
 */
@Deprecated
public class BlockFrameWrapper implements BlockFrameProvider
{

	private BlockFrame blockFrame;
	
	public BlockFrameWrapper()
	{
	}

	public BlockFrameWrapper(BlockFrame blockFrame)
	{
		this.blockFrame = blockFrame;
	}

	@Override
	public BlockFrame getBlockFrame()
	{
		return blockFrame;
	}

	public void setBlockFrame(BlockFrame blockFrame)
	{
		this.blockFrame = blockFrame;
	}

}
