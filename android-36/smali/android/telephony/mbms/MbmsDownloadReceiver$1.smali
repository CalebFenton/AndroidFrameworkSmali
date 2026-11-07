.class Landroid/telephony/mbms/MbmsDownloadReceiver$1;
.super Ljava/lang/Object;
.source "MbmsDownloadReceiver.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/mbms/MbmsDownloadReceiver;->cleanupTempFiles(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$filesInUse:Ljava/util/List;


# direct methods
.method constructor blacklist <init>(Landroid/telephony/mbms/MbmsDownloadReceiver;Ljava/util/List;)V
    .registers 3
    .param p1, "this$0"    # Landroid/telephony/mbms/MbmsDownloadReceiver;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 421
    iput-object p2, p0, Landroid/telephony/mbms/MbmsDownloadReceiver$1;->val$filesInUse:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api accept(Ljava/io/File;)Z
    .registers 6
    .param p1, "file"    # Ljava/io/File;

    .line 426
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_5} :catch_20

    .line 430
    .local v1, "canonicalFile":Ljava/io/File;
    nop

    .line 433
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".embms.temp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 434
    return v0

    .line 438
    :cond_13
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 439
    .local v0, "fileInUseUri":Landroid/net/Uri;
    iget-object v2, p0, Landroid/telephony/mbms/MbmsDownloadReceiver$1;->val$filesInUse:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    return v2

    .line 427
    .end local v0    # "fileInUseUri":Landroid/net/Uri;
    .end local v1    # "canonicalFile":Ljava/io/File;
    :catch_20
    move-exception v1

    .line 428
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got IOException canonicalizing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", not deleting."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MbmsDownloadReceiver"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    return v0
.end method
