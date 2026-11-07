.class public Landroid/provider/SearchIndexablesContract$BaseColumns;
.super Ljava/lang/Object;
.source "SearchIndexablesContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/SearchIndexablesContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BaseColumns"
.end annotation


# static fields
.field public static final whitelist COLUMN_CLASS_NAME:Ljava/lang/String; = "className"

.field public static final whitelist COLUMN_ICON_RESID:Ljava/lang/String; = "iconResId"

.field public static final whitelist COLUMN_INTENT_ACTION:Ljava/lang/String; = "intentAction"

.field public static final whitelist COLUMN_INTENT_TARGET_CLASS:Ljava/lang/String; = "intentTargetClass"

.field public static final whitelist COLUMN_INTENT_TARGET_PACKAGE:Ljava/lang/String; = "intentTargetPackage"

.field public static final whitelist COLUMN_RANK:Ljava/lang/String; = "rank"


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 355
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/provider/SearchIndexablesContract-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/provider/SearchIndexablesContract$BaseColumns;-><init>()V

    return-void
.end method
