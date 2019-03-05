.class public Lcom/htbridge/pivaa/handlers/ObjectSerialization;
.super Ljava/lang/Object;
.source "ObjectSerialization.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private location:Ljava/lang/String;

.field private proof:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string/jumbo v0, ":D"

    iput-object v0, p0, Lcom/htbridge/pivaa/handlers/ObjectSerialization;->proof:Ljava/lang/String;

    .line 20
    iput-object p1, p0, Lcom/htbridge/pivaa/handlers/ObjectSerialization;->location:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public getProof()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/htbridge/pivaa/handlers/ObjectSerialization;->proof:Ljava/lang/String;

    return-object v0
.end method

.method public loadObject()V
    .locals 7

    .prologue
    .line 67
    :try_start_0
    new-instance v2, Ljava/io/File;

    iget-object v5, p0, Lcom/htbridge/pivaa/handlers/ObjectSerialization;->location:Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 68
    .local v2, "f":Ljava/io/File;
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 69
    .local v3, "fis":Ljava/io/FileInputStream;
    new-instance v4, Ljava/io/ObjectInputStream;

    invoke-direct {v4, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 70
    .local v4, "is":Ljava/io/ObjectInputStream;
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htbridge/pivaa/handlers/ObjectSerialization;

    .line 71
    .local v0, "des":Lcom/htbridge/pivaa/handlers/ObjectSerialization;
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V

    .line 72
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 74
    invoke-virtual {v0}, Lcom/htbridge/pivaa/handlers/ObjectSerialization;->getProof()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htbridge/pivaa/handlers/ObjectSerialization;->setProof(Ljava/lang/String;)V

    .line 76
    const-string/jumbo v5, "htbridge"

    const-string/jumbo v6, "[ LOAD ] Serialization SUCCESS!"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 87
    .end local v0    # "des":Lcom/htbridge/pivaa/handlers/ObjectSerialization;
    .end local v2    # "f":Ljava/io/File;
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "is":Ljava/io/ObjectInputStream;
    :goto_0
    return-void

    .line 78
    :catch_0
    move-exception v1

    .line 79
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 86
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :goto_1
    const-string/jumbo v5, "htbridge"

    const-string/jumbo v6, "[ LOAD ] Serialization FAIL!"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 80
    :catch_1
    move-exception v1

    .line 81
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 82
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 83
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method public saveObject()V
    .locals 6

    .prologue
    .line 44
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lcom/htbridge/pivaa/handlers/ObjectSerialization;->location:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 45
    .local v1, "f":Ljava/io/File;
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 46
    .local v2, "fos":Ljava/io/FileOutputStream;
    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 47
    .local v3, "os":Ljava/io/ObjectOutputStream;
    invoke-virtual {v3, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 48
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V

    .line 49
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 51
    const-string/jumbo v4, "htbridge"

    const-string/jumbo v5, "[ SAVE ] Serialization SUCCESS!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 60
    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "os":Ljava/io/ObjectOutputStream;
    :goto_0
    return-void

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 59
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :goto_1
    const-string/jumbo v4, "htbridge"

    const-string/jumbo v5, "[ SAVE ] Serialization FAIL!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 55
    :catch_1
    move-exception v0

    .line 56
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public setProof(Ljava/lang/String;)V
    .locals 0
    .param p1, "p"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/htbridge/pivaa/handlers/ObjectSerialization;->proof:Ljava/lang/String;

    .line 29
    return-void
.end method
