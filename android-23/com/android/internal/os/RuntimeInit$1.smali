.class final Lcom/android/internal/os/RuntimeInit$1;
.super Lorg/apache/harmony/luni/internal/util/TimezoneGetter;
.source "RuntimeInit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/os/RuntimeInit;->commonInit()V
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
    .line 115
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/util/TimezoneGetter;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 118
    const-string/jumbo v0, "persist.sys.timezone"

    #@3
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method
