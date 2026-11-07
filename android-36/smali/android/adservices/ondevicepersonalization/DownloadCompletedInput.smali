.class public final Landroid/adservices/ondevicepersonalization/DownloadCompletedInput;
.super Ljava/lang/Object;
.source "DownloadCompletedInput.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/ondevicepersonalization/DownloadCompletedInput$Builder;
    }
.end annotation


# instance fields
.field blacklist mDownloadedContents:Landroid/adservices/ondevicepersonalization/KeyValueStore;


# direct methods
.method public constructor whitelist <init>(Landroid/adservices/ondevicepersonalization/KeyValueStore;)V
    .registers 3
    .param p1, "downloadedContents"    # Landroid/adservices/ondevicepersonalization/KeyValueStore;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/adservices/ondevicepersonalization/KeyValueStore;

    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/DownloadCompletedInput;->mDownloadedContents:Landroid/adservices/ondevicepersonalization/KeyValueStore;

    .line 47
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 58
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    return v0

    .line 59
    :cond_4
    if-eqz p1, :cond_1d

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_11

    goto :goto_1d

    .line 61
    :cond_11
    move-object v0, p1

    check-cast v0, Landroid/adservices/ondevicepersonalization/DownloadCompletedInput;

    .line 63
    .local v0, "that":Landroid/adservices/ondevicepersonalization/DownloadCompletedInput;
    iget-object v1, p0, Landroid/adservices/ondevicepersonalization/DownloadCompletedInput;->mDownloadedContents:Landroid/adservices/ondevicepersonalization/KeyValueStore;

    iget-object v2, v0, Landroid/adservices/ondevicepersonalization/DownloadCompletedInput;->mDownloadedContents:Landroid/adservices/ondevicepersonalization/KeyValueStore;

    .line 64
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 63
    return v1

    .line 59
    .end local v0    # "that":Landroid/adservices/ondevicepersonalization/DownloadCompletedInput;
    :cond_1d
    :goto_1d
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getDownloadedContents()Landroid/adservices/ondevicepersonalization/KeyValueStore;
    .registers 2

    .line 53
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/DownloadCompletedInput;->mDownloadedContents:Landroid/adservices/ondevicepersonalization/KeyValueStore;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 69
    const/4 v0, 0x1

    .line 70
    .local v0, "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/adservices/ondevicepersonalization/DownloadCompletedInput;->mDownloadedContents:Landroid/adservices/ondevicepersonalization/KeyValueStore;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 71
    .end local v0    # "_hash":I
    .local v1, "_hash":I
    return v1
.end method
