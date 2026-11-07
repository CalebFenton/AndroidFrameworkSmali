.class public final Landroid/health/connect/changelog/ChangeLogsRequest$Builder;
.super Ljava/lang/Object;
.source "ChangeLogsRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/health/connect/changelog/ChangeLogsRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mPageSize:I

.field private blacklist mToken:Ljava/lang/String;


# direct methods
.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "token"    # Ljava/lang/String;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const/16 v0, 0x3e8

    iput v0, p0, Landroid/health/connect/changelog/ChangeLogsRequest$Builder;->mPageSize:I

    .line 96
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iput-object p1, p0, Landroid/health/connect/changelog/ChangeLogsRequest$Builder;->mToken:Ljava/lang/String;

    .line 99
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/health/connect/changelog/ChangeLogsRequest;
    .registers 5

    .line 124
    new-instance v0, Landroid/health/connect/changelog/ChangeLogsRequest;

    iget-object v1, p0, Landroid/health/connect/changelog/ChangeLogsRequest$Builder;->mToken:Ljava/lang/String;

    iget v2, p0, Landroid/health/connect/changelog/ChangeLogsRequest$Builder;->mPageSize:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/health/connect/changelog/ChangeLogsRequest;-><init>(Ljava/lang/String;ILandroid/health/connect/changelog/ChangeLogsRequest-IA;)V

    return-object v0
.end method

.method public whitelist setPageSize(I)Landroid/health/connect/changelog/ChangeLogsRequest$Builder;
    .registers 5
    .param p1, "pageSize"    # I

    .line 110
    const/16 v0, 0x1388

    if-gt p1, v0, :cond_23

    .line 114
    const/4 v0, 0x1

    if-lt p1, v0, :cond_a

    .line 117
    iput p1, p0, Landroid/health/connect/changelog/ChangeLogsRequest$Builder;->mPageSize:I

    .line 118
    return-object p0

    .line 115
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Minimum page size: 1, requested: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Maximum page size: 5000, requested: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
