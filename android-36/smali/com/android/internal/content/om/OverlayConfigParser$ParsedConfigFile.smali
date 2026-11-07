.class public Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfigFile;
.super Ljava/lang/Object;
.source "OverlayConfigParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/content/om/OverlayConfigParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParsedConfigFile"
.end annotation


# instance fields
.field public final blacklist line:I

.field public final blacklist path:Ljava/lang/String;

.field public final blacklist xml:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "line"    # I
    .param p3, "xml"    # Ljava/lang/String;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfigFile;->path:Ljava/lang/String;

    .line 74
    iput p2, p0, Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfigFile;->line:I

    .line 75
    iput-object p3, p0, Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfigFile;->xml:Ljava/lang/String;

    .line 76
    return-void
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    iget-object v1, p0, Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfigFile;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    const-string v1, ", line="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    iget v1, p0, Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfigFile;->line:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 85
    iget-object v1, p0, Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfigFile;->xml:Ljava/lang/String;

    if-eqz v1, :cond_30

    .line 86
    const-string v1, ", xml="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    iget-object v1, p0, Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfigFile;->xml:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    :cond_30
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
