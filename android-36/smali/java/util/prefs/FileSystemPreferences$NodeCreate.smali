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


# direct methods
.method private constructor blacklist <init>(Ljava/util/prefs/FileSystemPreferences;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 398
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/util/prefs/FileSystemPreferences$Change;-><init>(Ljava/util/prefs/FileSystemPreferences;Ljava/util/prefs/FileSystemPreferences-IA;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/prefs/FileSystemPreferences;Ljava/util/prefs/FileSystemPreferences-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Ljava/util/prefs/FileSystemPreferences$NodeCreate;-><init>(Ljava/util/prefs/FileSystemPreferences;)V

    return-void
.end method


# virtual methods
.method greylist-max-o replay()V
    .registers 1

    .line 405
    return-void
.end method
