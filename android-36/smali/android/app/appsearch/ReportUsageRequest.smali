.class public final Landroid/app/appsearch/ReportUsageRequest;
.super Landroid/app/appsearch/safeparcel/AbstractSafeParcelable;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/appsearch/ReportUsageRequest$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/appsearch/ReportUsageRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mDocumentId:Ljava/lang/String;

.field private final blacklist mNamespace:Ljava/lang/String;

.field private final blacklist mUsageTimestampMillis:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Landroid/app/appsearch/ReportUsageRequestCreator;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/app/appsearch/ReportUsageRequestCreator;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroid/app/appsearch/ReportUsageRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 5

    .line 1
    invoke-direct {p0}, Landroid/app/appsearch/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Landroid/app/appsearch/ReportUsageRequest;->mNamespace:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    iput-object p2, p0, Landroid/app/appsearch/ReportUsageRequest;->mDocumentId:Ljava/lang/String;

    .line 13
    .line 14
    iput-wide p3, p0, Landroid/app/appsearch/ReportUsageRequest;->mUsageTimestampMillis:J

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public whitelist getDocumentId()Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/ReportUsageRequest;->mDocumentId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public whitelist getNamespace()Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/ReportUsageRequest;->mNamespace:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public whitelist getUsageTimestampMillis()J
    .registers 3

    .line 1
    iget-wide v0, p0, Landroid/app/appsearch/ReportUsageRequest;->mUsageTimestampMillis:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 1
    invoke-static {p0, p1, p2}, Landroid/app/appsearch/ReportUsageRequestCreator;->writeToParcel(Landroid/app/appsearch/ReportUsageRequest;Landroid/os/Parcel;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
