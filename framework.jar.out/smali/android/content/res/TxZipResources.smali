.class public Landroid/content/res/TxZipResources;
.super Ljava/lang/Object;
.source "TxZipResources.java"


# static fields
.field public static final FRAMEWORK_RES:Ljava/lang/String; = "framework-res"

.field public static final TAG:Ljava/lang/String; = "TxZipResources"

.field public static final THEME_DIR:Ljava/lang/String; = "/data/theme/"


# instance fields
.field mFirstOpen:Z

.field mPackageName:Ljava/lang/String;

.field mZipFile:Ljava/util/zip/ZipFile;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/TxZipResources;->mZipFile:Ljava/util/zip/ZipFile;

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/res/TxZipResources;->mFirstOpen:Z

    .line 23
    return-void
.end method

.method private declared-synchronized delayOpen()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 63
    monitor-enter p0

    const/4 v3, 0x0

    :try_start_0
    iput-boolean v3, p0, Landroid/content/res/TxZipResources;->mFirstOpen:Z

    .line 64
    iget-object v3, p0, Landroid/content/res/TxZipResources;->mPackageName:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/content/res/TxZipResources;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_1

    .line 85
    :cond_0
    :goto_0
    monitor-exit p0

    return v2

    .line 69
    :cond_1
    :try_start_1
    iget-object v3, p0, Landroid/content/res/TxZipResources;->mPackageName:Ljava/lang/String;

    invoke-static {v3}, Landroid/content/res/TxZipResources;->getZipFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 70
    .local v1, themeFile:Ljava/io/File;
    if-eqz v1, :cond_0

    .line 72
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    .line 78
    :try_start_2
    new-instance v3, Ljava/util/zip/ZipFile;

    invoke-direct {v3, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    iput-object v3, p0, Landroid/content/res/TxZipResources;->mZipFile:Ljava/util/zip/ZipFile;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 80
    const/4 v2, 0x1

    goto :goto_0

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, e:Ljava/io/IOException;
    :try_start_3
    const-string v3, "TxZipResources"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "open zip resource err:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/content/res/TxZipResources;->mZipFile:Ljava/util/zip/ZipFile;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 63
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #themeFile:Ljava/io/File;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public static getZipFile(Ljava/lang/String;)Ljava/io/File;
    .locals 7
    .parameter "pakageName"

    .prologue
    const/4 v5, 0x0

    .line 27
    new-instance v0, Ljava/io/File;

    const-string v6, "/data/theme/"

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 28
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 31
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 32
    .local v3, filelist:[Ljava/io/File;
    if-nez v3, :cond_1

    move-object v1, v5

    .line 45
    .end local v3           #filelist:[Ljava/io/File;
    :cond_0
    :goto_0
    return-object v1

    .line 34
    .restart local v3       #filelist:[Ljava/io/File;
    :cond_1
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    array-length v6, v3

    if-ge v4, v6, :cond_3

    .line 35
    aget-object v1, v3, v4

    .line 36
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 37
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 38
    .local v2, fileName:Ljava/lang/String;
    invoke-virtual {v2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 34
    .end local v2           #fileName:Ljava/lang/String;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v1           #file:Ljava/io/File;
    .end local v3           #filelist:[Ljava/io/File;
    .end local v4           #i:I
    :cond_3
    move-object v1, v5

    .line 45
    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 3

    .prologue
    .line 88
    monitor-enter p0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Landroid/content/res/TxZipResources;->mFirstOpen:Z

    .line 89
    iget-object v1, p0, Landroid/content/res/TxZipResources;->mZipFile:Ljava/util/zip/ZipFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 92
    :try_start_1
    iget-object v1, p0, Landroid/content/res/TxZipResources;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 96
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Landroid/content/res/TxZipResources;->mZipFile:Ljava/util/zip/ZipFile;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 100
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, e:Ljava/io/IOException;
    :try_start_3
    const-string v1, "TxZipResources"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 96
    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Landroid/content/res/TxZipResources;->mZipFile:Ljava/util/zip/ZipFile;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 88
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 96
    :catchall_1
    move-exception v1

    const/4 v2, 0x0

    :try_start_5
    iput-object v2, p0, Landroid/content/res/TxZipResources;->mZipFile:Ljava/util/zip/ZipFile;

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 128
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 129
    invoke-virtual {p0}, Landroid/content/res/TxZipResources;->close()V

    .line 130
    return-void
.end method

.method public declared-synchronized open(Ljava/lang/String;)Z
    .locals 3
    .parameter "packageName"

    .prologue
    const/4 v1, 0x0

    .line 49
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/res/TxZipResources;->close()V

    .line 50
    iput-object p1, p0, Landroid/content/res/TxZipResources;->mPackageName:Ljava/lang/String;

    .line 51
    iget-object v2, p0, Landroid/content/res/TxZipResources;->mPackageName:Ljava/lang/String;

    invoke-static {v2}, Landroid/content/res/TxZipResources;->getZipFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 52
    .local v0, themeFile:Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-nez v2, :cond_1

    .line 54
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/content/res/TxZipResources;->mFirstOpen:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    :goto_0
    monitor-exit p0

    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 49
    .end local v0           #themeFile:Ljava/io/File;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public openFile(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 8
    .parameter "filename"

    .prologue
    const/4 v4, 0x0

    .line 104
    iget-boolean v5, p0, Landroid/content/res/TxZipResources;->mFirstOpen:Z

    if-eqz v5, :cond_0

    .line 105
    invoke-direct {p0}, Landroid/content/res/TxZipResources;->delayOpen()Z

    .line 106
    :cond_0
    iget-object v5, p0, Landroid/content/res/TxZipResources;->mZipFile:Ljava/util/zip/ZipFile;

    if-nez v5, :cond_1

    .line 123
    :goto_0
    return-object v4

    .line 109
    :cond_1
    iget-object v5, p0, Landroid/content/res/TxZipResources;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v1

    .line 110
    .local v1, entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :cond_2
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 111
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/zip/ZipEntry;

    .line 112
    .local v3, zipEntry:Ljava/util/zip/ZipEntry;
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 113
    .local v2, entryName:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 115
    :try_start_0
    iget-object v5, p0, Landroid/content/res/TxZipResources;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v5, v3}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, e:Ljava/io/IOException;
    const-string v5, "TxZipResources"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #entryName:Ljava/lang/String;
    .end local v3           #zipEntry:Ljava/util/zip/ZipEntry;
    :cond_3
    const-string v5, "TxZipResources"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Not found resource file:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
