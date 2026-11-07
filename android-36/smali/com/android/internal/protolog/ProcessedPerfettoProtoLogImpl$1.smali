.class Lcom/android/internal/protolog/ProcessedPerfettoProtoLogImpl$1;
.super Ljava/lang/Object;
.source "ProcessedPerfettoProtoLogImpl.java"

# interfaces
.implements Lcom/android/internal/protolog/ViewerConfigInputStreamProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/protolog/ProcessedPerfettoProtoLogImpl;-><init>(Lcom/android/internal/protolog/ProtoLogDataSource;Ljava/lang/String;Lcom/android/internal/protolog/ProtoLogCacheUpdater;[Lcom/android/internal/protolog/common/IProtoLogGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$viewerConfigFilePath:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 50
    iput-object p1, p0, Lcom/android/internal/protolog/ProcessedPerfettoProtoLogImpl$1;->val$viewerConfigFilePath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getInputStream()Lcom/android/internal/protolog/AutoClosableProtoInputStream;
    .registers 5

    .line 55
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/android/internal/protolog/ProcessedPerfettoProtoLogImpl$1;->val$viewerConfigFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 57
    .local v0, "protoFileInputStream":Ljava/io/FileInputStream;
    new-instance v1, Lcom/android/internal/protolog/AutoClosableProtoInputStream;

    invoke-direct {v1, v0}, Lcom/android/internal/protolog/AutoClosableProtoInputStream;-><init>(Ljava/io/FileInputStream;)V
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_c} :catch_d

    return-object v1

    .line 58
    .end local v0    # "protoFileInputStream":Ljava/io/FileInputStream;
    :catch_d
    move-exception v0

    .line 59
    .local v0, "e":Ljava/io/FileNotFoundException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to load viewer config file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/protolog/ProcessedPerfettoProtoLogImpl$1;->val$viewerConfigFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
