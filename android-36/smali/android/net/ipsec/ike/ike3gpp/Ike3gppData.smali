.class public abstract Landroid/net/ipsec/ike/ike3gpp/Ike3gppData;
.super Ljava/lang/Object;
.source "Ike3gppData.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/ipsec/ike/ike3gpp/Ike3gppData$DataType;
    }
.end annotation


# static fields
.field private static final blacklist DATA_TYPE_CATEGORY_SIZE:I = 0x64

.field public static final whitelist DATA_TYPE_NOTIFY_BACKOFF_TIMER:I = 0x2

.field public static final whitelist DATA_TYPE_NOTIFY_N1_MODE_INFORMATION:I = 0x1

.field private static final blacklist DATA_TYPE_PAYLOAD_NOTIFY_BASE:I

.field private static final blacklist DATA_TYPE_SHARED_BASE:I


# direct methods
.method protected constructor blacklist <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract whitelist getDataType()I
.end method
