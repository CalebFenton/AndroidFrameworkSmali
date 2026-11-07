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
.field greylist-max-o key:Ljava/lang/String;

.field final synthetic blacklist this$0:Ljava/util/prefs/FileSystemPreferences;

.field greylist-max-o value:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Ljava/util/prefs/FileSystemPreferences;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 370
    iput-object p1, p0, Ljava/util/prefs/FileSystemPreferences$Put;->this$0:Ljava/util/prefs/FileSystemPreferences;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/util/prefs/FileSystemPreferences$Change;-><init>(Ljava/util/prefs/FileSystemPreferences;Ljava/util/prefs/FileSystemPreferences-IA;)V

    .line 371
    iput-object p2, p0, Ljava/util/prefs/FileSystemPreferences$Put;->key:Ljava/lang/String;

    .line 372
    iput-object p3, p0, Ljava/util/prefs/FileSystemPreferences$Put;->value:Ljava/lang/String;

    .line 373
    return-void
.end method


# virtual methods
.method greylist-max-o replay()V
    .registers 4

    .line 376
    iget-object v0, p0, Ljava/util/prefs/FileSystemPreferences$Put;->this$0:Ljava/util/prefs/FileSystemPreferences;

    invoke-static {v0}, Ljava/util/prefs/FileSystemPreferences;->-$$Nest$fgetprefsCache(Ljava/util/prefs/FileSystemPreferences;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Ljava/util/prefs/FileSystemPreferences$Put;->key:Ljava/lang/String;

    iget-object v2, p0, Ljava/util/prefs/FileSystemPreferences$Put;->value:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    return-void
.end method
