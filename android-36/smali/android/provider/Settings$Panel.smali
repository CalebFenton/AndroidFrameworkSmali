.class public final Landroid/provider/Settings$Panel;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Panel"
.end annotation


# static fields
.field public static final whitelist ACTION_INTERNET_CONNECTIVITY:Ljava/lang/String; = "android.settings.panel.action.INTERNET_CONNECTIVITY"

.field public static final whitelist ACTION_NFC:Ljava/lang/String; = "android.settings.panel.action.NFC"

.field public static final whitelist ACTION_VOLUME:Ljava/lang/String; = "android.settings.panel.action.VOLUME"

.field public static final whitelist ACTION_WIFI:Ljava/lang/String; = "android.settings.panel.action.WIFI"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 21661
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21662
    return-void
.end method
