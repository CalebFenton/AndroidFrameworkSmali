.class Ljava/util/prefs/FileSystemPreferences$NodeCreate;
.super Ljava/util/prefs/FileSystemPreferences$Change;
.source "FileSystemPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/prefs/FileSystemPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NodeCreate"
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/prefs/FileSystemPreferences;


# direct methods
.method private constructor <init>(Ljava/util/prefs/FileSystemPreferences;)V
    .locals 1
    .param p1, "this$0"    # Ljava/util/prefs/FileSystemPreferences;

    #@0
    .prologue
    .line 398
    iput-object p1, p0, Ljava/util/prefs/FileSystemPreferences$NodeCreate;->this$0:Ljava/util/prefs/FileSystemPreferences;

    #@2
    const/4 v0, 0x0

    #@3
    invoke-direct {p0, p1, v0}, Ljava/util/prefs/FileSystemPreferences$Change;-><init>(Ljava/util/prefs/FileSystemPreferences;Ljava/util/prefs/FileSystemPreferences$Change;)V

    #@6
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/prefs/FileSystemPreferences;Ljava/util/prefs/FileSystemPreferences$NodeCreate;)V
    .locals 0
    .param p1, "this$0"    # Ljava/util/prefs/FileSystemPreferences;

    #@0
    .prologue
    invoke-direct {p0, p1}, Ljava/util/prefs/FileSystemPreferences$NodeCreate;-><init>(Ljava/util/prefs/FileSystemPreferences;)V

    #@3
    return-void
.end method


# virtual methods
.method replay()V
    .locals 0

    #@0
    .prologue
    .line 404
    return-void
.end method
