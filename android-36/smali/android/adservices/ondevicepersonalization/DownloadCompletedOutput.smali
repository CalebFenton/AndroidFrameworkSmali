.class public final Landroid/adservices/ondevicepersonalization/DownloadCompletedOutput;
.super Ljava/lang/Object;
.source "DownloadCompletedOutput.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/ondevicepersonalization/DownloadCompletedOutput$Builder;
    }
.end annotation


# instance fields
.field private blacklist mRetainedKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 58
    .local p1, "retainedKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    nop

    .line 39
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/DownloadCompletedOutput;->mRetainedKeys:Ljava/util/List;

    .line 59
    iput-object p1, p0, Landroid/adservices/ondevicepersonalization/DownloadCompletedOutput;->mRetainedKeys:Ljava/util/List;

    .line 60
    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/adservices/ondevicepersonalization/DownloadCompletedOutput;->mRetainedKeys:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 64
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 163
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 82
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    return v0

    .line 83
    :cond_4
    if-eqz p1, :cond_1d

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_11

    goto :goto_1d

    .line 85
    :cond_11
    move-object v0, p1

    check-cast v0, Landroid/adservices/ondevicepersonalization/DownloadCompletedOutput;

    .line 87
    .local v0, "that":Landroid/adservices/ondevicepersonalization/DownloadCompletedOutput;
    iget-object v1, p0, Landroid/adservices/ondevicepersonalization/DownloadCompletedOutput;->mRetainedKeys:Ljava/util/List;

    iget-object v2, v0, Landroid/adservices/ondevicepersonalization/DownloadCompletedOutput;->mRetainedKeys:Ljava/util/List;

    .line 88
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 87
    return v1

    .line 83
    .end local v0    # "that":Landroid/adservices/ondevicepersonalization/DownloadCompletedOutput;
    :cond_1d
    :goto_1d
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getRetainedKeys()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/DownloadCompletedOutput;->mRetainedKeys:Ljava/util/List;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 97
    const/4 v0, 0x1

    .line 98
    .local v0, "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/adservices/ondevicepersonalization/DownloadCompletedOutput;->mRetainedKeys:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 99
    .end local v0    # "_hash":I
    .local v1, "_hash":I
    return v1
.end method
