.class Lcom/htbridge/pivaa/EncryptionActivity$1;
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
    .line 44
    iput-object p1, p0, Lcom/htbridge/pivaa/EncryptionActivity$1;->this$0:Lcom/htbridge/pivaa/EncryptionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 48
    const-string/jumbo v4, "htbridge"

    const-string/jumbo v5, "Clicked hashing button"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget-object v4, p0, Lcom/htbridge/pivaa/EncryptionActivity$1;->this$0:Lcom/htbridge/pivaa/EncryptionActivity;

    const v5, 0x7f0800f8

    invoke-virtual {v4, v5}, Lcom/htbridge/pivaa/EncryptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 51
    .local v2, "mValueForHashingView":Landroid/widget/EditText;
    iget-object v4, p0, Lcom/htbridge/pivaa/EncryptionActivity$1;->this$0:Lcom/htbridge/pivaa/EncryptionActivity;

    const v5, 0x7f08006f

    invoke-virtual {v4, v5}, Lcom/htbridge/pivaa/EncryptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 53
    .local v1, "mValueForHashingResultView":Landroid/widget/EditText;
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 54
    .local v3, "value":Ljava/lang/String;
    const-string/jumbo v4, "MD5"

    invoke-static {v4, v3}, Lcom/htbridge/pivaa/handlers/Encryption;->hash(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "hashingResult":Ljava/lang/String;
    sget-object v4, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v1, v0, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 57
    return-void
.end method
