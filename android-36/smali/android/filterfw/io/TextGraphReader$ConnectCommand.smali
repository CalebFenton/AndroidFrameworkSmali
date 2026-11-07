.class Landroid/filterfw/io/TextGraphReader$ConnectCommand;
.super Ljava/lang/Object;
.source "TextGraphReader.java"

# interfaces
.implements Landroid/filterfw/io/TextGraphReader$Command;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/filterfw/io/TextGraphReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectCommand"
.end annotation


# instance fields
.field private blacklist mSourceFilter:Ljava/lang/String;

.field private blacklist mSourcePort:Ljava/lang/String;

.field private blacklist mTargetFilter:Ljava/lang/String;

.field private blacklist mTargetName:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Landroid/filterfw/io/TextGraphReader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p2, "sourceFilter"    # Ljava/lang/String;
    .param p3, "sourcePort"    # Ljava/lang/String;
    .param p4, "targetFilter"    # Ljava/lang/String;
    .param p5, "targetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput-object p2, p0, Landroid/filterfw/io/TextGraphReader$ConnectCommand;->mSourceFilter:Ljava/lang/String;

    .line 135
    iput-object p3, p0, Landroid/filterfw/io/TextGraphReader$ConnectCommand;->mSourcePort:Ljava/lang/String;

    .line 136
    iput-object p4, p0, Landroid/filterfw/io/TextGraphReader$ConnectCommand;->mTargetFilter:Ljava/lang/String;

    .line 137
    iput-object p5, p0, Landroid/filterfw/io/TextGraphReader$ConnectCommand;->mTargetName:Ljava/lang/String;

    .line 138
    return-void
.end method


# virtual methods
.method public blacklist execute(Landroid/filterfw/io/TextGraphReader;)V
    .registers 7
    .param p1, "reader"    # Landroid/filterfw/io/TextGraphReader;

    .line 142
    invoke-static {p1}, Landroid/filterfw/io/TextGraphReader;->-$$Nest$fgetmCurrentGraph(Landroid/filterfw/io/TextGraphReader;)Landroid/filterfw/core/FilterGraph;

    move-result-object v0

    iget-object v1, p0, Landroid/filterfw/io/TextGraphReader$ConnectCommand;->mSourceFilter:Ljava/lang/String;

    iget-object v2, p0, Landroid/filterfw/io/TextGraphReader$ConnectCommand;->mSourcePort:Ljava/lang/String;

    iget-object v3, p0, Landroid/filterfw/io/TextGraphReader$ConnectCommand;->mTargetFilter:Ljava/lang/String;

    iget-object v4, p0, Landroid/filterfw/io/TextGraphReader$ConnectCommand;->mTargetName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/filterfw/core/FilterGraph;->connect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    return-void
.end method
