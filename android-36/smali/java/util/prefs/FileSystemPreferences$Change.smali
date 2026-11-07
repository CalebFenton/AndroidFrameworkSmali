.class abstract Ljava/util/prefs/FileSystemPreferences$Change;
.super Ljava/lang/Object;
.source "FileSystemPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/prefs/FileSystemPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "Change"
.end annotation


# direct methods
.method private constructor blacklist <init>(Ljava/util/prefs/FileSystemPreferences;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/prefs/FileSystemPreferences;Ljava/util/prefs/FileSystemPreferences-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Ljava/util/prefs/FileSystemPreferences$Change;-><init>(Ljava/util/prefs/FileSystemPreferences;)V

    return-void
.end method


# virtual methods
.method abstract greylist-max-o replay()V
.end method
