.class public final Landroid/adservices/ondevicepersonalization/DownloadCompletedInput$Builder;
.super Ljava/lang/Object;
.source "DownloadCompletedInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/ondevicepersonalization/DownloadCompletedInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mDownloadedContents:Landroid/adservices/ondevicepersonalization/KeyValueStore;


# direct methods
.method public constructor blacklist <init>(Landroid/adservices/ondevicepersonalization/KeyValueStore;)V
    .registers 2
    .param p1, "downloadedContents"    # Landroid/adservices/ondevicepersonalization/KeyValueStore;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Landroid/adservices/ondevicepersonalization/DownloadCompletedInput$Builder;->mDownloadedContents:Landroid/adservices/ondevicepersonalization/KeyValueStore;

    .line 85
    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/adservices/ondevicepersonalization/DownloadCompletedInput;
    .registers 3

    .line 88
    new-instance v0, Landroid/adservices/ondevicepersonalization/DownloadCompletedInput;

    iget-object v1, p0, Landroid/adservices/ondevicepersonalization/DownloadCompletedInput$Builder;->mDownloadedContents:Landroid/adservices/ondevicepersonalization/KeyValueStore;

    invoke-direct {v0, v1}, Landroid/adservices/ondevicepersonalization/DownloadCompletedInput;-><init>(Landroid/adservices/ondevicepersonalization/KeyValueStore;)V

    .line 90
    .local v0, "o":Landroid/adservices/ondevicepersonalization/DownloadCompletedInput;
    return-object v0
.end method
