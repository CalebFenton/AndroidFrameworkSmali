.class Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$ScanRequest;
.super Ljava/lang/Object;
.source "DomainSelectionConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScanRequest"
.end annotation


# instance fields
.field final blacklist mPreferredNetworks:[I

.field final blacklist mScanType:I


# direct methods
.method constructor blacklist <init>([II)V
    .registers 3

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$ScanRequest;->mPreferredNetworks:[I

    .line 103
    iput p2, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$ScanRequest;->mScanType:I

    return-void
.end method
