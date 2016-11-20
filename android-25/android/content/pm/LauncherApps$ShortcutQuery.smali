.class public Landroid/content/pm/LauncherApps$ShortcutQuery;
.super Ljava/lang/Object;
.source "LauncherApps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/LauncherApps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShortcutQuery"
.end annotation


# static fields
.field public static final FLAG_GET_ALL_KINDS:I = 0xb
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FLAG_GET_DYNAMIC:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FLAG_GET_KEY_FIELDS_ONLY:I = 0x4

.field public static final FLAG_GET_MANIFEST:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FLAG_GET_PINNED:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FLAG_MATCH_ALL_KINDS:I = 0xb

.field public static final FLAG_MATCH_DYNAMIC:I = 0x1

.field public static final FLAG_MATCH_MANIFEST:I = 0x8

.field public static final FLAG_MATCH_PINNED:I = 0x2


# instance fields
.field mActivity:Landroid/content/ComponentName;

.field mChangedSince:J

.field mPackage:Ljava/lang/String;

.field mQueryFlags:I

.field mShortcutIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public setActivity(Landroid/content/ComponentName;)Landroid/content/pm/LauncherApps$ShortcutQuery;
    .locals 0
    .param p1, "activity"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 306
    iput-object p1, p0, Landroid/content/pm/LauncherApps$ShortcutQuery;->mActivity:Landroid/content/ComponentName;

    #@2
    .line 307
    return-object p0
.end method

.method public setChangedSince(J)Landroid/content/pm/LauncherApps$ShortcutQuery;
    .locals 1
    .param p1, "changedSince"    # J

    #@0
    .prologue
    .line 279
    iput-wide p1, p0, Landroid/content/pm/LauncherApps$ShortcutQuery;->mChangedSince:J

    #@2
    .line 280
    return-object p0
.end method

.method public setPackage(Ljava/lang/String;)Landroid/content/pm/LauncherApps$ShortcutQuery;
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 287
    iput-object p1, p0, Landroid/content/pm/LauncherApps$ShortcutQuery;->mPackage:Ljava/lang/String;

    #@2
    .line 288
    return-object p0
.end method

.method public setQueryFlags(I)Landroid/content/pm/LauncherApps$ShortcutQuery;
    .locals 0
    .param p1, "queryFlags"    # I

    #@0
    .prologue
    .line 322
    iput p1, p0, Landroid/content/pm/LauncherApps$ShortcutQuery;->mQueryFlags:I

    #@2
    .line 323
    return-object p0
.end method

.method public setShortcutIds(Ljava/util/List;)Landroid/content/pm/LauncherApps$ShortcutQuery;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/pm/LauncherApps$ShortcutQuery;"
        }
    .end annotation

    #@0
    .prologue
    .line 296
    .local p1, "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Landroid/content/pm/LauncherApps$ShortcutQuery;->mShortcutIds:Ljava/util/List;

    #@2
    .line 297
    return-object p0
.end method
