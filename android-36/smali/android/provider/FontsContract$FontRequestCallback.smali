.class public Landroid/provider/FontsContract$FontRequestCallback;
.super Ljava/lang/Object;
.source "FontsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/FontsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FontRequestCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/FontsContract$FontRequestCallback$FontRequestFailReason;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final whitelist FAIL_REASON_FONT_LOAD_ERROR:I = -0x3

.field public static final whitelist FAIL_REASON_FONT_NOT_FOUND:I = 0x1

.field public static final whitelist FAIL_REASON_FONT_UNAVAILABLE:I = 0x2

.field public static final whitelist FAIL_REASON_MALFORMED_QUERY:I = 0x3

.field public static final whitelist FAIL_REASON_PROVIDER_NOT_FOUND:I = -0x1

.field public static final whitelist FAIL_REASON_WRONG_CERTIFICATES:I = -0x2


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 483
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onTypefaceRequestFailed(I)V
    .registers 2
    .param p1, "reason"    # I

    .line 503
    return-void
.end method

.method public whitelist onTypefaceRetrieved(Landroid/graphics/Typeface;)V
    .registers 2
    .param p1, "typeface"    # Landroid/graphics/Typeface;

    .line 490
    return-void
.end method
