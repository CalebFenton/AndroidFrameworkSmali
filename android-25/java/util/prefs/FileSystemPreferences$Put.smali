.class Ljava/util/prefs/FileSystemPreferences$Put;
.super Ljava/util/prefs/FileSystemPreferences$Change;
.source "FileSystemPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/prefs/FileSystemPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Put"
.end annotation


# instance fields
.field key:Ljava/lang/String;

.field final synthetic this$0:Ljava/util/prefs/FileSystemPreferences;

.field value:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/util/prefs/FileSystemPreferences;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Ljava/util/prefs/FileSystemPreferences;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 370
    iput-object p1, p0, Ljava/util/prefs/FileSystemPreferences$Put;->this$0:Ljava/util/prefs/FileSystemPreferences;

    #@2
    const/4 v0, 0x0

    #@3
    invoke-direct {p0, p1, v0}, Ljava/util/prefs/FileSystemPreferences$Change;-><init>(Ljava/util/prefs/FileSystemPreferences;Ljava/util/prefs/FileSystemPreferences$Change;)V

    #@6
    .line 371
    iput-object p2, p0, Ljava/util/prefs/FileSystemPreferences$Put;->key:Ljava/lang/String;

    #@8
    .line 372
    iput-object p3, p0, Ljava/util/prefs/FileSystemPreferences$Put;->value:Ljava/lang/String;

    #@a
    .line 370
    return-void
.end method


# virtual methods
.method replay()V
    .locals 3

    #@0
    .prologue
    .line 376
    iget-object v0, p0, Ljava/util/prefs/FileSystemPreferences$Put;->this$0:Ljava/util/prefs/FileSystemPreferences;

    #@2
    invoke-static {v0}, Ljava/util/prefs/FileSystemPreferences;->-get3(Ljava/util/prefs/FileSystemPreferences;)Ljava/util/Map;

    #@5
    move-result-object v0

    #@6
    iget-object v1, p0, Ljava/util/prefs/FileSystemPreferences$Put;->key:Ljava/lang/String;

    #@8
    iget-object v2, p0, Ljava/util/prefs/FileSystemPreferences$Put;->value:Ljava/lang/String;

    #@a
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    .line 375
    return-void
.end method
