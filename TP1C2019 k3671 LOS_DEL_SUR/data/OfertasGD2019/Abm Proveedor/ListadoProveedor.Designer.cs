﻿namespace OfertasGD2019.AbmProveedor
{
    partial class ListadoProveedor
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.txtRSocial = new System.Windows.Forms.Label();
            this.Mail = new System.Windows.Forms.Label();
            this.DNI = new System.Windows.Forms.Label();
            this.txtRSoc = new System.Windows.Forms.TextBox();
            this.btnBuscar = new System.Windows.Forms.Button();
            this.btnLimpiar = new System.Windows.Forms.Button();
            this.numCuit = new System.Windows.Forms.TextBox();
            this.dataGridViewProv = new System.Windows.Forms.DataGridView();
            this.txtMail = new MiLibreria.TxtBoxMail();
            this.CUIT = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridViewProv)).BeginInit();
            this.SuspendLayout();
            // 
            // txtRSocial
            // 
            this.txtRSocial.AutoSize = true;
            this.txtRSocial.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtRSocial.Location = new System.Drawing.Point(12, 38);
            this.txtRSocial.Name = "txtRSocial";
            this.txtRSocial.Size = new System.Drawing.Size(103, 17);
            this.txtRSocial.TabIndex = 0;
            this.txtRSocial.Text = "Razon Social";
            this.txtRSocial.Click += new System.EventHandler(this.Nombre_Click);
            // 
            // Mail
            // 
            this.Mail.AutoSize = true;
            this.Mail.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Mail.Location = new System.Drawing.Point(663, 38);
            this.Mail.Name = "Mail";
            this.Mail.Size = new System.Drawing.Size(37, 17);
            this.Mail.TabIndex = 2;
            this.Mail.Text = "Mail";
            // 
            // DNI
            // 
            this.DNI.Location = new System.Drawing.Point(0, 0);
            this.DNI.Name = "DNI";
            this.DNI.Size = new System.Drawing.Size(100, 23);
            this.DNI.TabIndex = 38;
            // 
            // txtRSoc
            // 
            this.txtRSoc.Location = new System.Drawing.Point(121, 38);
            this.txtRSoc.Name = "txtRSoc";
            this.txtRSoc.Size = new System.Drawing.Size(202, 20);
            this.txtRSoc.TabIndex = 4;
            // 
            // btnBuscar
            // 
            this.btnBuscar.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnBuscar.Location = new System.Drawing.Point(1081, 26);
            this.btnBuscar.Name = "btnBuscar";
            this.btnBuscar.Size = new System.Drawing.Size(100, 40);
            this.btnBuscar.TabIndex = 35;
            this.btnBuscar.Text = "Buscar";
            this.btnBuscar.UseVisualStyleBackColor = true;
            this.btnBuscar.Click += new System.EventHandler(this.btnBuscar_Click_1);
            // 
            // btnLimpiar
            // 
            this.btnLimpiar.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnLimpiar.Location = new System.Drawing.Point(1206, 26);
            this.btnLimpiar.Name = "btnLimpiar";
            this.btnLimpiar.Size = new System.Drawing.Size(100, 40);
            this.btnLimpiar.TabIndex = 36;
            this.btnLimpiar.Text = "Limpiar";
            this.btnLimpiar.UseVisualStyleBackColor = true;
            this.btnLimpiar.Click += new System.EventHandler(this.btnLimpiar_Click_1);
            // 
            // numCuit
            // 
            this.numCuit.Location = new System.Drawing.Point(418, 37);
            this.numCuit.Name = "numCuit";
            this.numCuit.Size = new System.Drawing.Size(202, 20);
            this.numCuit.TabIndex = 37;
            // 
            // dataGridViewProv
            // 
            this.dataGridViewProv.AllowUserToAddRows = false;
            this.dataGridViewProv.AllowUserToDeleteRows = false;
            this.dataGridViewProv.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridViewProv.Location = new System.Drawing.Point(12, 110);
            this.dataGridViewProv.MultiSelect = false;
            this.dataGridViewProv.Name = "dataGridViewProv";
            this.dataGridViewProv.ReadOnly = true;
            this.dataGridViewProv.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dataGridViewProv.Size = new System.Drawing.Size(1294, 463);
            this.dataGridViewProv.TabIndex = 9;
            this.dataGridViewProv.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dataGridView_CellClick);
            // 
            // txtMail
            // 
            this.txtMail.Location = new System.Drawing.Point(719, 38);
            this.txtMail.Name = "txtMail";
            this.txtMail.Size = new System.Drawing.Size(203, 20);
            this.txtMail.TabIndex = 7;
            // 
            // CUIT
            // 
            this.CUIT.AutoSize = true;
            this.CUIT.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.CUIT.Location = new System.Drawing.Point(351, 38);
            this.CUIT.Name = "CUIT";
            this.CUIT.Size = new System.Drawing.Size(43, 17);
            this.CUIT.TabIndex = 39;
            this.CUIT.Text = "CUIT";
            // 
            // ListadoProveedor
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1318, 633);
            this.Controls.Add(this.CUIT);
            this.Controls.Add(this.dataGridViewProv);
            this.Controls.Add(this.numCuit);
            this.Controls.Add(this.btnLimpiar);
            this.Controls.Add(this.btnBuscar);
            this.Controls.Add(this.txtMail);
            this.Controls.Add(this.txtRSoc);
            this.Controls.Add(this.DNI);
            this.Controls.Add(this.Mail);
            this.Controls.Add(this.txtRSocial);
            this.Name = "ListadoProveedor";
            this.Text = "Listado de Clientes";
            this.Load += new System.EventHandler(this.ListadoProveedor_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridViewProv)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label txtRSocial;
        private System.Windows.Forms.Label Mail;
        private System.Windows.Forms.Label DNI;
        public System.Windows.Forms.TextBox txtRSoc;
        public MiLibreria.TxtBoxMail txtMail;
        private System.Windows.Forms.Button btnBuscar;
        private System.Windows.Forms.Button btnLimpiar;
        public System.Windows.Forms.TextBox numCuit;
        private System.Windows.Forms.DataGridView dataGridViewProv;
        private System.Windows.Forms.Label CUIT;
    }
}