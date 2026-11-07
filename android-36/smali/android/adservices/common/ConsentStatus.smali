.class public Landroid/adservices/common/ConsentStatus;
.super Ljava/lang/Object;
.source "ConsentStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/common/ConsentStatus$ConsentStatusCode;
    }
.end annotation


# static fields
.field public static final blacklist GIVEN:I = 0x3

.field public static final blacklist REVOKED:I = 0x2

.field public static final blacklist SERVICE_NOT_ENABLED:I = 0x4

.field public static final blacklist UNKNOWN:I = 0x0

.field public static final blacklist UNSET:I = 0x1

.field public static final blacklist WAS_RESET:I = 0x5


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
