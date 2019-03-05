.class public Lcom/htbridge/pivaa/handlers/database/DatabaseAdapter;
.super Landroid/widget/ArrayAdapter;
.source "DatabaseAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htbridge/pivaa/handlers/database/DatabaseAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/htbridge/pivaa/handlers/database/DatabaseRecord;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field activityRef:Lcom/htbridge/pivaa/DatabaseActivity;

.field private dataSet:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htbridge/pivaa/handlers/database/DatabaseRecord;",
            ">;"
        }
    .end annotation
.end field

.field db:Lcom/htbridge/pivaa/handlers/database/DatabaseHelper;

.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Landroid/content/Context;Lcom/htbridge/pivaa/handlers/database/DatabaseHelper;Lcom/htbridge/pivaa/DatabaseActivity;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "db"    # Lcom/htbridge/pivaa/handlers/database/DatabaseHelper;
    .param p4, "ref"    # Lcom/htbridge/pivaa/DatabaseActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htbridge/pivaa/handlers/database/DatabaseRecord;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/htbridge/pivaa/handlers/database/DatabaseHelper;",
            "Lcom/htbridge/pivaa/DatabaseActivity;",
            ")V"
        }
    .end annotation

    .prologue
    .line 32
    .local p1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/htbridge/pivaa/handlers/database/DatabaseRecord;>;"
    const v0, 0x7f0a002f

    invoke-direct {p0, p2, v0, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 33
    iput-object p1, p0, Lcom/htbridge/pivaa/handlers/database/DatabaseAdapter;->dataSet:Ljava/util/ArrayList;

    .line 34
    iput-object p2, p0, Lcom/htbridge/pivaa/handlers/database/DatabaseAdapter;->mContext:Landroid/content/Context;

    .line 35
    iput-object p3, p0, Lcom/htbridge/pivaa/handlers/database/DatabaseAdapter;->db:Lcom/htbridge/pivaa/handlers/database/DatabaseHelper;

    .line 36
    iput-object p4, p0, Lcom/htbridge/pivaa/handlers/database/DatabaseAdapter;->activityRef:Lcom/htbridge/pivaa/DatabaseActivity;

    .line 37
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lcom/htbridge/pivaa/handlers/database/DatabaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htbridge/pivaa/handlers/database/DatabaseRecord;

    .line 66
    .local v0, "dataModel":Lcom/htbridge/pivaa/handlers/database/DatabaseRecord;
    if-nez p2, :cond_0

    .line 68
    new-instance v3, Lcom/htbridge/pivaa/handlers/database/DatabaseAdapter$ViewHolder;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/htbridge/pivaa/handlers/database/DatabaseAdapter$ViewHolder;-><init>(Lcom/htbridge/pivaa/handlers/database/DatabaseAdapter$1;)V

    .line 69
    .local v3, "viewHolder":Lcom/htbridge/pivaa/handlers/database/DatabaseAdapter$ViewHolder;
    invoke-virtual {p0}, Lcom/htbridge/pivaa/handlers/database/DatabaseAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 70
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f0a002f

    const/4 v5, 0x0

    invoke-virtual {v1, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 72
    const v4, 0x7f0800e7

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/htbridge/pivaa/handlers/database/DatabaseAdapter$ViewHolder;->title_database_item:Landroid/widget/TextView;

    .line 73
    const v4, 0x7f08002b

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/htbridge/pivaa/handlers/database/DatabaseAdapter$ViewHolder;->author_database_item:Landroid/widget/TextView;

    .line 74
    const v4, 0x7f080035

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, v3, Lcom/htbridge/pivaa/handlers/database/DatabaseAdapter$ViewHolder;->button_delete_database_item:Landroid/widget/Button;

    .line 76
    move-object v2, p2

    .line 78
    .local v2, "result":Landroid/view/View;
    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 85
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    :goto_0
    iget-object v4, v3, Lcom/htbridge/pivaa/handlers/database/DatabaseAdapter$ViewHolder;->title_database_item:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/htbridge/pivaa/handlers/database/DatabaseRecord;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v4, v3, Lcom/htbridge/pivaa/handlers/database/DatabaseAdapter$ViewHolder;->author_database_item:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/htbridge/pivaa/handlers/database/DatabaseRecord;->getAuthor()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v4, v3, Lcom/htbridge/pivaa/handlers/database/DatabaseAdapter$ViewHolder;->button_delete_database_item:Landroid/widget/Button;

    new-instance v5, Lcom/htbridge/pivaa/handlers/database/DatabaseAdapter$1;

    invoke-direct {v5, p0, v0}, Lcom/htbridge/pivaa/handlers/database/DatabaseAdapter$1;-><init>(Lcom/htbridge/pivaa/handlers/database/DatabaseAdapter;Lcom/htbridge/pivaa/handlers/database/DatabaseRecord;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    return-object p2

    .line 80
    .end local v2    # "result":Landroid/view/View;
    .end local v3    # "viewHolder":Lcom/htbridge/pivaa/handlers/database/DatabaseAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htbridge/pivaa/handlers/database/DatabaseAdapter$ViewHolder;

    .line 81
    .restart local v3    # "viewHolder":Lcom/htbridge/pivaa/handlers/database/DatabaseAdapter$ViewHolder;
    move-object v2, p2

    .restart local v2    # "result":Landroid/view/View;
    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 42
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 43
    .local v2, "position":I
    invoke-virtual {p0, v2}, Lcom/htbridge/pivaa/handlers/database/DatabaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .local v1, "object":Ljava/lang/Object;
    move-object v0, v1

    .line 44
    check-cast v0, Lcom/htbridge/pivaa/handlers/database/DatabaseRecord;

    .line 46
    .local v0, "dataModel":Lcom/htbridge/pivaa/handlers/database/DatabaseRecord;
    const-string/jumbo v3, "htbridge"

    const-string/jumbo v4, "click"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 54
    return-void
.end method
