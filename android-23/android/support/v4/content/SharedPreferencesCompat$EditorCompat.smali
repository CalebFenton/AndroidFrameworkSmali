.class public Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat;
.super Ljava/lang/Object;
.source "SharedPreferencesCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/content/SharedPreferencesCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EditorCompat"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat$Helper;,
        Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat$EditorHelperBaseImpl;,
        Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat$EditorHelperApi9Impl;
    }
.end annotation


# static fields
.field private static sInstance:Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat;


# instance fields
.field private final mHelper:Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat$Helper;


# direct methods
.method private constructor <init>()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 52
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@6
    const/16 v1, 0x9

    #@8
    if-lt v0, v1, :cond_0

    #@a
    .line 53
    new-instance v0, Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat$EditorHelperApi9Impl;

    #@c
    invoke-direct {v0, v2}, Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat$EditorHelperApi9Impl;-><init>(Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat$EditorHelperApi9Impl;)V

    #@f
    iput-object v0, p0, Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat;->mHelper:Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat$Helper;

    #@11
    .line 51
    :goto_0
    return-void

    #@12
    .line 55
    :cond_0
    new-instance v0, Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat$EditorHelperBaseImpl;

    #@14
    invoke-direct {v0, v2}, Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat$EditorHelperBaseImpl;-><init>(Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat$EditorHelperBaseImpl;)V

    #@17
    iput-object v0, p0, Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat;->mHelper:Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat$Helper;

    #@19
    goto :goto_0
.end method

.method public static getInstance()Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat;
    .locals 1

    #@0
    .prologue
    .line 60
    sget-object v0, Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat;->sInstance:Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 61
    new-instance v0, Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat;

    #@6
    invoke-direct {v0}, Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat;-><init>()V

    #@9
    sput-object v0, Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat;->sInstance:Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat;

    #@b
    .line 63
    :cond_0
    sget-object v0, Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat;->sInstance:Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat;

    #@d
    return-object v0
.end method


# virtual methods
.method public apply(Landroid/content/SharedPreferences$Editor;)V
    .locals 1
    .param p1, "editor"    # Landroid/content/SharedPreferences$Editor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    #@0
    .prologue
    .line 67
    iget-object v0, p0, Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat;->mHelper:Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat$Helper;

    #@2
    invoke-interface {v0, p1}, Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat$Helper;->apply(Landroid/content/SharedPreferences$Editor;)V

    #@5
    .line 66
    return-void
.end method
