.class final Ljava/util/prefs/AbstractPreferences$1;
.super Ljava/lang/Thread;
.source "AbstractPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/prefs/AbstractPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    #@0
    .prologue
    .line 65
    invoke-static {}, Ljava/util/prefs/Preferences;->userRoot()Ljava/util/prefs/Preferences;

    #@3
    move-result-object v2

    #@4
    .line 66
    .local v2, "uroot":Ljava/util/prefs/Preferences;
    invoke-static {}, Ljava/util/prefs/Preferences;->systemRoot()Ljava/util/prefs/Preferences;

    #@7
    move-result-object v1

    #@8
    .line 68
    .local v1, "sroot":Ljava/util/prefs/Preferences;
    :try_start_0
    invoke-virtual {v2}, Ljava/util/prefs/Preferences;->flush()V
    :try_end_0
    .catch Ljava/util/prefs/BackingStoreException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 73
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/util/prefs/Preferences;->flush()V
    :try_end_1
    .catch Ljava/util/prefs/BackingStoreException; {:try_start_1 .. :try_end_1} :catch_1

    #@e
    .line 64
    :goto_1
    return-void

    #@f
    .line 69
    :catch_0
    move-exception v0

    #@10
    .local v0, "e":Ljava/util/prefs/BackingStoreException;
    goto :goto_0

    #@11
    .line 74
    .end local v0    # "e":Ljava/util/prefs/BackingStoreException;
    :catch_1
    move-exception v0

    #@12
    .restart local v0    # "e":Ljava/util/prefs/BackingStoreException;
    goto :goto_1
.end method
