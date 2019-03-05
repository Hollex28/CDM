.class public Lcom/htbridge/pivaa/handlers/LoadCode;
.super Ljava/lang/ClassLoader;
.source "LoadCode.java"


# instance fields
.field context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/ClassLoader;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/htbridge/pivaa/handlers/LoadCode;->context:Landroid/content/Context;

    .line 20
    return-void
.end method

.method private copyFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sourceFileName"    # Ljava/lang/String;
    .param p3, "targetFile"    # Ljava/io/File;

    .prologue
    .line 109
    const/4 v3, 0x0

    .line 110
    .local v3, "in":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 112
    .local v4, "out":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    invoke-virtual {v7, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 113
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 114
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .local v5, "out":Ljava/io/FileOutputStream;
    const/16 v7, 0x400

    :try_start_1
    new-array v6, v7, [B

    .line 115
    .local v6, "temp":[B
    const/4 v0, 0x0

    .line 116
    .local v0, "count":I
    :goto_0
    invoke-virtual {v3, v6}, Ljava/io/InputStream;->read([B)I

    move-result v0

    if-lez v0, :cond_2

    .line 117
    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, v0}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 126
    .end local v0    # "count":I
    .end local v6    # "temp":[B
    :catch_0
    move-exception v1

    move-object v4, v5

    .line 127
    .end local v5    # "out":Ljava/io/FileOutputStream;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :goto_1
    if-eqz v3, :cond_0

    .line 129
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 135
    :cond_0
    :goto_2
    if-eqz v4, :cond_1

    .line 137
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 143
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_3
    return-void

    .line 120
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v0    # "count":I
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v6    # "temp":[B
    :cond_2
    if-eqz v3, :cond_3

    .line 121
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 123
    :cond_3
    if-eqz v5, :cond_4

    .line 124
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_4
    move-object v4, v5

    .line 142
    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 130
    .end local v0    # "count":I
    .end local v6    # "temp":[B
    .restart local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 131
    .local v2, "e1":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 138
    .end local v2    # "e1":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 139
    .restart local v2    # "e1":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 126
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "e1":Ljava/io/IOException;
    :catch_3
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public copyAssetsToFiles(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "sourceFile"    # Ljava/lang/String;

    .prologue
    .line 89
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/htbridge/pivaa/handlers/LoadCode;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "fileDir":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 91
    .local v2, "workingDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 92
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 94
    :cond_0
    const-string/jumbo v3, "htbridge"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Copying "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    new-instance v1, Ljava/io/File;

    const-string/jumbo v3, "test.jar"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 97
    .local v1, "outFileBin":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 98
    iget-object v3, p0, Lcom/htbridge/pivaa/handlers/LoadCode;->context:Landroid/content/Context;

    invoke-direct {p0, v3, p1, v1}, Lcom/htbridge/pivaa/handlers/LoadCode;->copyFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)V

    .line 99
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 102
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Copying "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/test.jar"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public load(Ljava/lang/String;)Ljava/lang/String;
    .locals 17
    .param p1, "classname"    # Ljava/lang/String;

    .prologue
    .line 28
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .local v13, "sb":Ljava/lang/StringBuilder;
    move-object/from16 v10, p1

    .line 31
    .local v10, "path":Ljava/lang/String;
    const/16 v14, 0x2e

    const/16 v15, 0x2f

    invoke-virtual {v10, v14, v15}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v10

    .line 32
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "assets/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ".jar"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 35
    const-string/jumbo v14, "\\."

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 36
    .local v2, "classnameExploded":[Ljava/lang/String;
    array-length v14, v2

    add-int/lit8 v14, v14, -0x1

    aget-object p1, v2, v14

    .line 38
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/htbridge/pivaa/handlers/LoadCode;->copyAssetsToFiles(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 39
    .local v12, "resCopy":Ljava/lang/String;
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htbridge/pivaa/handlers/LoadCode;->context:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v15

    invoke-virtual {v15}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "/test.jar"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 43
    .local v5, "filePath":Ljava/lang/String;
    const-string/jumbo v14, "htbridge"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Loading class file "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Loading class file "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htbridge/pivaa/handlers/LoadCode;->context:Landroid/content/Context;

    const-string/jumbo v15, "dex"

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 62
    .local v3, "dexDir":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    .line 63
    .local v9, "parent":Ljava/lang/ClassLoader;
    new-instance v6, Ldalvik/system/DexClassLoader;

    const/4 v14, 0x0

    invoke-direct {v6, v5, v3, v14, v9}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 64
    .local v6, "loader":Ldalvik/system/DexClassLoader;
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 65
    .local v1, "c":Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v8

    .line 66
    .local v8, "o":Ljava/lang/Object;
    const-string/jumbo v14, "run"

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Class;

    invoke-virtual {v1, v14, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 68
    .local v7, "m":Ljava/lang/reflect/Method;
    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-virtual {v7, v8, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 70
    .local v11, "res":Ljava/lang/Object;
    const-string/jumbo v14, "htbridge"

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Output from executed code: \""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "\""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    .line 81
    .end local v1    # "c":Ljava/lang/Class;
    .end local v3    # "dexDir":Ljava/lang/String;
    .end local v6    # "loader":Ldalvik/system/DexClassLoader;
    .end local v7    # "m":Ljava/lang/reflect/Method;
    .end local v8    # "o":Ljava/lang/Object;
    .end local v9    # "parent":Ljava/lang/ClassLoader;
    .end local v11    # "res":Ljava/lang/Object;
    :goto_0
    return-object v14

    .line 75
    :catch_0
    move-exception v4

    .line 76
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 79
    const-string/jumbo v14, "Error in running"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    goto :goto_0
.end method
