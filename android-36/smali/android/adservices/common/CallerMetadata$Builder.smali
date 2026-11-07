.class public final Landroid/adservices/common/CallerMetadata$Builder;
.super Ljava/lang/Object;
.source "CallerMetadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/common/CallerMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBinderElapsedTimestamp:J


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/adservices/common/CallerMetadata;
    .registers 5

    .line 87
    new-instance v0, Landroid/adservices/common/CallerMetadata;

    iget-wide v1, p0, Landroid/adservices/common/CallerMetadata$Builder;->mBinderElapsedTimestamp:J

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/adservices/common/CallerMetadata;-><init>(JLandroid/adservices/common/CallerMetadata-IA;)V

    return-object v0
.end method

.method public blacklist setBinderElapsedTimestamp(J)Landroid/adservices/common/CallerMetadata$Builder;
    .registers 3
    .param p1, "binderElapsedTimestamp"    # J

    .line 81
    iput-wide p1, p0, Landroid/adservices/common/CallerMetadata$Builder;->mBinderElapsedTimestamp:J

    .line 82
    return-object p0
.end method
