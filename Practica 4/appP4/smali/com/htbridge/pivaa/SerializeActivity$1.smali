.class Lcom/htbridge/pivaa/SerializeActivity$1;
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
    .line 50
    iput-object p1, p0, Lcom/htbridge/pivaa/SerializeActivity$1;->this$0:Lcom/htbridge/pivaa/SerializeActivity;

    iput-object p2, p0, Lcom/htbridge/pivaa/SerializeActivity$1;->val$serializableFileLocation:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 54
    iget-object v3, p0, Lcom/htbridge/pivaa/SerializeActivity$1;->this$0:Lcom/htbridge/pivaa/SerializeActivity;

    const v4, 0x7f080081

    invoke-virtual {v3, v4}, Lcom/htbridge/pivaa/SerializeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 55
    .local v1, "mInputSerializeView":Landroid/widget/EditText;
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "input":Ljava/lang/String;
    new-instance v2, Lcom/htbridge/pivaa/handlers/ObjectSerialization;

    iget-object v3, p0, Lcom/htbridge/pivaa/SerializeActivity$1;->val$serializableFileLocation:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/htbridge/pivaa/handlers/ObjectSerialization;-><init>(Ljava/lang/String;)V

    .line 58
    .local v2, "obj":Lcom/htbridge/pivaa/handlers/ObjectSerialization;
    invoke-virtual {v2, v0}, Lcom/htbridge/pivaa/handlers/ObjectSerialization;->setProof(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v2}, Lcom/htbridge/pivaa/handlers/ObjectSerialization;->saveObject()V

    .line 60
    return-void
.end method
