.class public Lcom/htbridge/pivaa/handlers/about/AboutAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AboutAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htbridge/pivaa/handlers/about/AboutAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/htbridge/pivaa/handlers/about/AboutRecord;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private dataSet:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htbridge/pivaa/handlers/about/AboutRecord;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htbridge/pivaa/handlers/about/AboutRecord;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 28
    .local p1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/htbridge/pivaa/handlers/about/AboutRecord;>;"
    const v0, 0x7f0a001b

    invoke-direct {p0, p2, v0, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 29
    iput-object p1, p0, Lcom/htbridge/pivaa/handlers/about/AboutAdapter;->dataSet:Ljava/util/ArrayList;

    .line 30
    iput-object p2, p0, Lcom/htbridge/pivaa/handlers/about/AboutAdapter;->mContext:Landroid/content/Context;

    .line 31
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lcom/htbridge/pivaa/handlers/about/AboutAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htbridge/pivaa/handlers/about/AboutRecord;

    .line 60
    .local v0, "dataModel":Lcom/htbridge/pivaa/handlers/about/AboutRecord;
    if-nez p2, :cond_0

    .line 62
    new-instance v3, Lcom/htbridge/pivaa/handlers/about/AboutAdapter$ViewHolder;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/htbridge/pivaa/handlers/about/AboutAdapter$ViewHolder;-><init>(Lcom/htbridge/pivaa/handlers/about/AboutAdapter$1;)V

    .line 63
    .local v3, "viewHolder":Lcom/htbridge/pivaa/handlers/about/AboutAdapter$ViewHolder;
    invoke-virtual {p0}, Lcom/htbridge/pivaa/handlers/about/AboutAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 64
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f0a001b

    const/4 v5, 0x0

    invoke-virtual {v1, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 66
    const v4, 0x7f080094

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/htbridge/pivaa/handlers/about/AboutAdapter$ViewHolder;->name_about_item:Landroid/widget/TextView;

    .line 67
    const v4, 0x7f080059

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/htbridge/pivaa/handlers/about/AboutAdapter$ViewHolder;->description_about_item:Landroid/widget/TextView;

    .line 69
    move-object v2, p2

    .line 71
    .local v2, "result":Landroid/view/View;
    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 78
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    :goto_0
    iget-object v4, v3, Lcom/htbridge/pivaa/handlers/about/AboutAdapter$ViewHolder;->name_about_item:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/htbridge/pivaa/handlers/about/AboutRecord;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v4, v3, Lcom/htbridge/pivaa/handlers/about/AboutAdapter$ViewHolder;->description_about_item:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/htbridge/pivaa/handlers/about/AboutRecord;->getDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    return-object p2

    .line 73
    .end local v2    # "result":Landroid/view/View;
    .end local v3    # "viewHolder":Lcom/htbridge/pivaa/handlers/about/AboutAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htbridge/pivaa/handlers/about/AboutAdapter$ViewHolder;

    .line 74
    .restart local v3    # "viewHolder":Lcom/htbridge/pivaa/handlers/about/AboutAdapter$ViewHolder;
    move-object v2, p2

    .restart local v2    # "result":Landroid/view/View;
    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 36
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 37
    .local v2, "position":I
    invoke-virtual {p0, v2}, Lcom/htbridge/pivaa/handlers/about/AboutAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .local v1, "object":Ljava/lang/Object;
    move-object v0, v1

    .line 38
    check-cast v0, Lcom/htbridge/pivaa/handlers/about/AboutRecord;

    .line 40
    .local v0, "dataModel":Lcom/htbridge/pivaa/handlers/about/AboutRecord;
    const-string/jumbo v3, "htbridge"

    const-string/jumbo v4, "click"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 48
    return-void
.end method
