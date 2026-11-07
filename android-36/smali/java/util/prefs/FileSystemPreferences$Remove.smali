.class Ljava/util/prefs/FileSystemPreferences$Remove;
.super Ljava/util/prefs/FileSystemPreferences$Change;
.source "FileSystemPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/prefs/FileSystemPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Remove"
.end annotation


# instance fields
.field greylist-max-o key:Ljava/lang/String;

.field final synthetic blacklist this$0:Ljava/util/prefs/FileSystemPreferences;


# direct methods
.method constructor blacklist <init>(Ljava/util/prefs/FileSystemPreferences;Ljava/lang/String;)V
    .registers 4
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 386
    iput-object p1, p0, Ljava/util/prefs/FileSystemPreferences$Remove;->this$0:Ljava/util/prefs/FileSystemPreferences;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/util/prefs/FileSystemPreferences$Change;-><init>(Ljava/util/prefs/FileSystemPreferences;Ljava/util/prefs/FileSystemPreferences-IA;)V

    .line 387
    iput-object p2, p0, Ljava/util/prefs/FileSystemPreferences$Remove;->key:Ljava/lang/String;

    .line 388
    return-void
.end method


# virtual methods
.method greylist-max-o replay()V
    .registers 3

    .line 391
    iget-object v0, p0, Ljava/util/prefs/FileSystemPreferences$Remove;->this$0:Ljava/util/prefs/FileSystemPreferences;

    invoke-static {v0}, Ljava/util/prefs/FileSystemPreferences;->-$$Nest$fgetprefsCache(Ljava/util/prefs/FileSystemPreferences;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Ljava/util/prefs/FileSystemPreferences$Remove;->key:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    return-void
.end method
