.class Lcom/htbridge/pivaa/SerializeActivity$2;
.super Ljava/lang/Object;
.source "SerializeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htbridge/pivaa/SerializeActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htbridge/pivaa/SerializeActivity;

.field final synthetic val$serializableFileLocation:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/htbridge/pivaa/SerializeActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/htbridge/pivaa/SerializeActivity;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/htbridge/pivaa/SerializeActivity$2;->this$0:Lcom/htbridge/pivaa/SerializeActivity;

    iput-object p2, p0, Lcom/htbridge/pivaa/SerializeActivity$2;->val$serializableFileLocation:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 70
    new-instance v1, Lcom/htbridge/pivaa/handlers/ObjectSerialization;

    iget-object v3, p0, Lcom/htbridge/pivaa/SerializeActivity$2;->val$serializableFileLocation:Ljava/lang/String;

    invoke-direct {v1, v3}, Lcom/htbridge/pivaa/handlers/ObjectSerialization;-><init>(Ljava/lang/String;)V

    .line 71
    .local v1, "obj":Lcom/htbridge/pivaa/handlers/ObjectSerialization;
    invoke-virtual {v1}, Lcom/htbridge/pivaa/handlers/ObjectSerialization;->loadObject()V

    .line 72
    invoke-virtual {v1}, Lcom/htbridge/pivaa/handlers/ObjectSerialization;->getProof()Ljava/lang/String;

    move-result-object v2

    .line 73
    .local v2, "proof":Ljava/lang/String;
    iget-object v3, p0, Lcom/htbridge/pivaa/SerializeActivity$2;->this$0:Lcom/htbridge/pivaa/SerializeActivity;

    invoke-virtual {v3}, Lcom/htbridge/pivaa/SerializeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 75
    iget-object v3, p0, Lcom/htbridge/pivaa/SerializeActivity$2;->this$0:Lcom/htbridge/pivaa/SerializeActivity;

    const v4, 0x7f080081

    invoke-virtual {v3, v4}, Lcom/htbridge/pivaa/SerializeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 76
    .local v0, "mInputSerializeView":Landroid/widget/EditText;
    sget-object v3, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 77
    return-void
.end method
