.class final Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;
.super Ljava/lang/Object;
.source "CallerInfoAsyncQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/CallerInfoAsyncQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CookieWrapper"
.end annotation


# instance fields
.field public blacklist cookie:Ljava/lang/Object;

.field public blacklist event:I

.field public blacklist geoDescription:Ljava/lang/String;

.field public blacklist listener:Landroid/telecom/CallerInfoAsyncQuery$OnQueryCompleteListener;

.field public blacklist number:Ljava/lang/String;

.field public blacklist subId:I


# direct methods
.method private constructor greylist <init>()V
    .registers 1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/telecom/CallerInfoAsyncQuery-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;-><init>()V

    return-void
.end method
