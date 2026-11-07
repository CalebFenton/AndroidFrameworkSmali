.class public interface abstract annotation Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario$Type;
.super Ljava/lang/Object;
.source "JankScenario.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "Type"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final blacklist COMBINED_WEBVIEW_SCROLLING:I = 0xb

.field public static final blacklist FEED_SCROLLING:I = 0x9

.field public static final blacklist NEW_TAB_PAGE:I = 0x3

.field public static final blacklist OMNIBOX_FOCUS:I = 0x2

.field public static final blacklist OPEN_LINK_IN_NEW_TAB:I = 0x6

.field public static final blacklist PERIODIC_REPORTING:I = 0x1

.field public static final blacklist STARTUP:I = 0x4

.field public static final blacklist START_SURFACE_HOMEPAGE:I = 0x7

.field public static final blacklist START_SURFACE_TAB_SWITCHER:I = 0x8

.field public static final blacklist TAB_SWITCHER:I = 0x5

.field public static final blacklist WEBVIEW_SCROLLING:I = 0xa
