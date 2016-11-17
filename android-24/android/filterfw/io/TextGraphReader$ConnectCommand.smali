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
.field private mSourceFilter:Ljava/lang/String;

.field private mSourcePort:Ljava/lang/String;

.field private mTargetFilter:Ljava/lang/String;

.field private mTargetName:Ljava/lang/String;

.field final synthetic this$0:Landroid/filterfw/io/TextGraphReader;


# direct methods
.method public constructor <init>(Landroid/filterfw/io/TextGraphReader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Landroid/filterfw/io/TextGraphReader;
    .param p2, "sourceFilter"    # Ljava/lang/String;
    .param p3, "sourcePort"    # Ljava/lang/String;
    .param p4, "targetFilter"    # Ljava/lang/String;
    .param p5, "targetName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 130
    iput-object p1, p0, Landroid/filterfw/io/TextGraphReader$ConnectCommand;->this$0:Landroid/filterfw/io/TextGraphReader;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 134
    iput-object p2, p0, Landroid/filterfw/io/TextGraphReader$ConnectCommand;->mSourceFilter:Ljava/lang/String;

    #@7
    .line 135
    iput-object p3, p0, Landroid/filterfw/io/TextGraphReader$ConnectCommand;->mSourcePort:Ljava/lang/String;

    #@9
    .line 136
    iput-object p4, p0, Landroid/filterfw/io/TextGraphReader$ConnectCommand;->mTargetFilter:Ljava/lang/String;

    #@b
    .line 137
    iput-object p5, p0, Landroid/filterfw/io/TextGraphReader$ConnectCommand;->mTargetName:Ljava/lang/String;

    #@d
    .line 133
    return-void
.end method


# virtual methods
.method public execute(Landroid/filterfw/io/TextGraphReader;)V
    .locals 5
    .param p1, "reader"    # Landroid/filterfw/io/TextGraphReader;

    #@0
    .prologue
    .line 142
    invoke-static {p1}, Landroid/filterfw/io/TextGraphReader;->-get1(Landroid/filterfw/io/TextGraphReader;)Landroid/filterfw/core/FilterGraph;

    #@3
    move-result-object v0

    #@4
    iget-object v1, p0, Landroid/filterfw/io/TextGraphReader$ConnectCommand;->mSourceFilter:Ljava/lang/String;

    #@6
    iget-object v2, p0, Landroid/filterfw/io/TextGraphReader$ConnectCommand;->mSourcePort:Ljava/lang/String;

    #@8
    iget-object v3, p0, Landroid/filterfw/io/TextGraphReader$ConnectCommand;->mTargetFilter:Ljava/lang/String;

    #@a
    iget-object v4, p0, Landroid/filterfw/io/TextGraphReader$ConnectCommand;->mTargetName:Ljava/lang/String;

    #@c
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/filterfw/core/FilterGraph;->connect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@f
    .line 141
    return-void
.end method
