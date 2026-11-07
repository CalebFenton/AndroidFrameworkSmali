.class public Lcom/android/internal/widget/remotecompose/core/operations/Theme;
.super Lcom/android/internal/widget/remotecompose/core/Operation;
.source "Theme.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/RemoteComposeOperation;


# static fields
.field private static final blacklist CLASS_NAME:Ljava/lang/String; = "Theme"

.field public static final blacklist DARK:I = -0x2

.field public static final blacklist LIGHT:I = -0x3

.field private static final blacklist OP_CODE:I = 0x3f

.field public static final blacklist UNSPECIFIED:I = -0x1


# instance fields
.field blacklist mTheme:I


# direct methods
.method public constructor blacklist <init>(I)V
    .registers 2
    .param p1, "theme"    # I

    .line 49
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/Operation;-><init>()V

    .line 50
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/Theme;->mTheme:I

    .line 51
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I)V
    .registers 3
    .param p0, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .param p1, "theme"    # I

    .line 102
    const/16 v0, 0x3f

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 103
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 104
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 5
    .param p0, "doc"    # Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;

    .line 123
    const/16 v0, 0x3f

    const-string v1, "Theme"

    const-string v2, "Protocol Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 124
    const-string v1, "Set a theme"

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 125
    const/4 v1, 0x0

    const-string v2, "THEME"

    const-string/jumbo v3, "theme id"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 126
    const-string v1, "UNSPECIFIED"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->possibleValues(Ljava/lang/String;I)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 127
    const-string v1, "DARK"

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->possibleValues(Ljava/lang/String;I)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 128
    const-string v1, "LIGHT"

    const/4 v2, -0x3

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->possibleValues(Ljava/lang/String;I)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 129
    return-void
.end method

.method public static blacklist id()I
    .registers 1

    .line 92
    const/16 v0, 0x3f

    return v0
.end method

.method public static blacklist name()Ljava/lang/String;
    .registers 1

    .line 83
    const-string v0, "Theme"

    return-object v0
.end method

.method public static blacklist read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V
    .registers 4
    .param p0, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/WireBuffer;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;)V"
        }
    .end annotation

    .line 113
    .local p1, "operations":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/remotecompose/core/Operation;>;"
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v0

    .line 114
    .local v0, "theme":I
    new-instance v1, Lcom/android/internal/widget/remotecompose/core/operations/Theme;

    invoke-direct {v1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/Theme;-><init>(I)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    return-void
.end method


# virtual methods
.method public blacklist apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 3
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 66
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/Theme;->mTheme:I

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->setTheme(I)V

    .line 67
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/Theme;->markDirty()V

    .line 68
    return-void
.end method

.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "indent"    # Ljava/lang/String;

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/Theme;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SET_THEME "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/Theme;->mTheme:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 3
    .param p1, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    .line 55
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/Theme;->mTheme:I

    invoke-static {p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/Theme;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I)V

    .line 56
    return-void
.end method
