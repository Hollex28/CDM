.class Lcom/htbridge/pivaa/EncryptionActivity$3;
.super Ljava/lang/Object;
.source "EncryptionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htbridge/pivaa/EncryptionActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htbridge/pivaa/EncryptionActivity;


# direct methods
.method constructor <init>(Lcom/htbridge/pivaa/EncryptionActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/htbridge/pivaa/EncryptionActivity;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/htbridge/pivaa/EncryptionActivity$3;->this$0:Lcom/htbridge/pivaa/EncryptionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 84
    const-string/jumbo v5, "htbridge"

    const-string/jumbo v6, "Clicked encrypt button"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v5, p0, Lcom/htbridge/pivaa/EncryptionActivity$3;->this$0:Lcom/htbridge/pivaa/EncryptionActivity;

    const v6, 0x7f0800a7

    invoke-virtual {v5, v6}, Lcom/htbridge/pivaa/EncryptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 87
    .local v3, "mEncryptionPlaintextView":Landroid/widget/EditText;
    iget-object v5, p0, Lcom/htbridge/pivaa/EncryptionActivity$3;->this$0:Lcom/htbridge/pivaa/EncryptionActivity;

    const v6, 0x7f08004d

    invoke-virtual {v5, v6}, Lcom/htbridge/pivaa/EncryptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 88
    .local v2, "mEncryptionCipherView":Landroid/widget/EditText;
    iget-object v5, p0, Lcom/htbridge/pivaa/EncryptionActivity$3;->this$0:Lcom/htbridge/pivaa/EncryptionActivity;

    const v6, 0x7f08004c

    invoke-virtual {v5, v6}, Lcom/htbridge/pivaa/EncryptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 90
    .local v1, "mDecryptionCipherView":Landroid/widget/EditText;
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 91
    .local v4, "value":Ljava/lang/String;
    invoke-static {v4}, Lcom/htbridge/pivaa/handlers/Encryption;->encryptAES_ECB_PKCS5Padding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "encryptionResult":Ljava/lang/String;
    sget-object v5, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v2, v0, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 94
    sget-object v5, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v1, v0, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 95
    return-void
.end method
