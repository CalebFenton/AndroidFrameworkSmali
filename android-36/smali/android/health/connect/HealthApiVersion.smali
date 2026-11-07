.class public Landroid/health/connect/HealthApiVersion;
.super Ljava/lang/Object;
.source "HealthApiVersion.java"


# static fields
.field private static blacklist API_VERSION:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 22
    const/4 v0, 0x0

    sput v0, Landroid/health/connect/HealthApiVersion;->API_VERSION:I

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getApiVersion()I
    .registers 1

    .line 28
    sget v0, Landroid/health/connect/HealthApiVersion;->API_VERSION:I

    return v0
.end method
