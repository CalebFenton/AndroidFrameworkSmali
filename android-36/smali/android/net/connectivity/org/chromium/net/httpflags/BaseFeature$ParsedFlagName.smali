.class final Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeature$ParsedFlagName;
.super Ljava/lang/Object;
.source "BaseFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ParsedFlagName"
.end annotation


# instance fields
.field public blacklist featureName:Ljava/lang/String;

.field public blacklist paramName:Ljava/lang/String;


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeature-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeature$ParsedFlagName;-><init>()V

    return-void
.end method
