.class public Landroid/service/notification/ZenModeConfig$Diff;
.super Ljava/lang/Object;
.source "ZenModeConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/ZenModeConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Diff"
.end annotation


# instance fields
.field private final lines:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Landroid/service/notification/ZenModeConfig$Diff;Ljava/lang/String;Ljava/lang/String;)Landroid/service/notification/ZenModeConfig$Diff;
    .locals 1
    .param p1, "item"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/service/notification/ZenModeConfig$Diff;->addLine(Ljava/lang/String;Ljava/lang/String;)Landroid/service/notification/ZenModeConfig$Diff;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 1184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1185
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Landroid/service/notification/ZenModeConfig$Diff;->lines:Ljava/util/ArrayList;

    #@a
    .line 1184
    return-void
.end method

.method private addLine(Ljava/lang/String;Ljava/lang/String;)Landroid/service/notification/ZenModeConfig$Diff;
    .locals 3
    .param p1, "item"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1201
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$Diff;->lines:Ljava/util/ArrayList;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v1

    #@b
    const-string/jumbo v2, ":"

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1d
    .line 1202
    return-object p0
.end method


# virtual methods
.method public addLine(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Landroid/service/notification/ZenModeConfig$Diff;
    .locals 2
    .param p1, "item"    # Ljava/lang/String;
    .param p2, "from"    # Ljava/lang/Object;
    .param p3, "to"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1210
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@8
    move-result-object v0

    #@9
    const-string/jumbo v1, "->"

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    invoke-direct {p0, p1, v0}, Landroid/service/notification/ZenModeConfig$Diff;->addLine(Ljava/lang/String;Ljava/lang/String;)Landroid/service/notification/ZenModeConfig$Diff;

    #@1b
    move-result-object v0

    #@1c
    return-object v0
.end method

.method public addLine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Landroid/service/notification/ZenModeConfig$Diff;
    .locals 2
    .param p1, "item"    # Ljava/lang/String;
    .param p2, "subitem"    # Ljava/lang/String;
    .param p3, "from"    # Ljava/lang/Object;
    .param p4, "to"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1206
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    move-result-object v0

    #@9
    const-string/jumbo v1, "."

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {p0, v0, p3, p4}, Landroid/service/notification/ZenModeConfig$Diff;->addLine(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Landroid/service/notification/ZenModeConfig$Diff;

    #@1b
    move-result-object v0

    #@1c
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 1189
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    const-string/jumbo v3, "Diff["

    #@5
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@8
    .line 1190
    .local v2, "sb":Ljava/lang/StringBuilder;
    iget-object v3, p0, Landroid/service/notification/ZenModeConfig$Diff;->lines:Ljava/util/ArrayList;

    #@a
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@d
    move-result v0

    #@e
    .line 1191
    .local v0, "N":I
    const/4 v1, 0x0

    #@f
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@11
    .line 1192
    if-lez v1, :cond_0

    #@13
    .line 1193
    const/16 v3, 0x2c

    #@15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@18
    .line 1195
    :cond_0
    iget-object v3, p0, Landroid/service/notification/ZenModeConfig$Diff;->lines:Ljava/util/ArrayList;

    #@1a
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1d
    move-result-object v3

    #@1e
    check-cast v3, Ljava/lang/String;

    #@20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    .line 1191
    add-int/lit8 v1, v1, 0x1

    #@25
    goto :goto_0

    #@26
    .line 1197
    :cond_1
    const/16 v3, 0x5d

    #@28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v3

    #@2c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v3

    #@30
    return-object v3
.end method
