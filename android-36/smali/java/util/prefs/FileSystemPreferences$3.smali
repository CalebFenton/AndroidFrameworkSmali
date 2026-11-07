.class Ljava/util/prefs/FileSystemPreferences$3;
.super Ljava/lang/Thread;
.source "FileSystemPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/prefs/FileSystemPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 423
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 1

    .line 425
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->-$$Nest$smsyncWorld()V

    .line 426
    return-void
.end method
