.class Lcom/android/commands/hid/Event$Builder;
.super Ljava/lang/Object;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/hid/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Builder"
.end annotation


# instance fields
.field private mEvent:Lcom/android/commands/hid/Event;


# direct methods
.method static synthetic -wrap0(Lcom/android/commands/hid/Event$Builder;Ljava/lang/String;)V
    .locals 0
    .param p1, "command"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/commands/hid/Event$Builder;->setCommand(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 92
    new-instance v0, Lcom/android/commands/hid/Event;

    #@5
    invoke-direct {v0}, Lcom/android/commands/hid/Event;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/commands/hid/Event$Builder;->mEvent:Lcom/android/commands/hid/Event;

    #@a
    .line 91
    return-void
.end method

.method private setCommand(Ljava/lang/String;)V
    .locals 1
    .param p1, "command"    # Ljava/lang/String;

    #@0
    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/commands/hid/Event$Builder;->mEvent:Lcom/android/commands/hid/Event;

    #@2
    invoke-static {v0, p1}, Lcom/android/commands/hid/Event;->-set0(Lcom/android/commands/hid/Event;Ljava/lang/String;)Ljava/lang/String;

    #@5
    .line 99
    return-void
.end method


# virtual methods
.method public build()Lcom/android/commands/hid/Event;
    .locals 2

    #@0
    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/commands/hid/Event$Builder;->mEvent:Lcom/android/commands/hid/Event;

    #@2
    invoke-static {v0}, Lcom/android/commands/hid/Event;->-get3(Lcom/android/commands/hid/Event;)I

    #@5
    move-result v0

    #@6
    const/4 v1, -0x1

    #@7
    if-ne v0, v1, :cond_0

    #@9
    .line 129
    new-instance v0, Ljava/lang/IllegalStateException;

    #@b
    const-string/jumbo v1, "No event id"

    #@e
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0

    #@12
    .line 130
    :cond_0
    iget-object v0, p0, Lcom/android/commands/hid/Event$Builder;->mEvent:Lcom/android/commands/hid/Event;

    #@14
    invoke-static {v0}, Lcom/android/commands/hid/Event;->-get0(Lcom/android/commands/hid/Event;)Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    if-nez v0, :cond_1

    #@1a
    .line 131
    new-instance v0, Ljava/lang/IllegalStateException;

    #@1c
    const-string/jumbo v1, "Event does not contain a command"

    #@1f
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@22
    throw v0

    #@23
    .line 133
    :cond_1
    const-string/jumbo v0, "register"

    #@26
    iget-object v1, p0, Lcom/android/commands/hid/Event$Builder;->mEvent:Lcom/android/commands/hid/Event;

    #@28
    invoke-static {v1}, Lcom/android/commands/hid/Event;->-get0(Lcom/android/commands/hid/Event;)Ljava/lang/String;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2f
    move-result v0

    #@30
    if-eqz v0, :cond_2

    #@32
    .line 134
    iget-object v0, p0, Lcom/android/commands/hid/Event$Builder;->mEvent:Lcom/android/commands/hid/Event;

    #@34
    invoke-static {v0}, Lcom/android/commands/hid/Event;->-get1(Lcom/android/commands/hid/Event;)[B

    #@37
    move-result-object v0

    #@38
    if-nez v0, :cond_4

    #@3a
    .line 135
    new-instance v0, Ljava/lang/IllegalStateException;

    #@3c
    const-string/jumbo v1, "Device registration is missing descriptor"

    #@3f
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@42
    throw v0

    #@43
    .line 137
    :cond_2
    const-string/jumbo v0, "delay"

    #@46
    iget-object v1, p0, Lcom/android/commands/hid/Event$Builder;->mEvent:Lcom/android/commands/hid/Event;

    #@48
    invoke-static {v1}, Lcom/android/commands/hid/Event;->-get0(Lcom/android/commands/hid/Event;)Ljava/lang/String;

    #@4b
    move-result-object v1

    #@4c
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4f
    move-result v0

    #@50
    if-eqz v0, :cond_3

    #@52
    .line 138
    iget-object v0, p0, Lcom/android/commands/hid/Event$Builder;->mEvent:Lcom/android/commands/hid/Event;

    #@54
    invoke-static {v0}, Lcom/android/commands/hid/Event;->-get2(Lcom/android/commands/hid/Event;)I

    #@57
    move-result v0

    #@58
    if-gtz v0, :cond_4

    #@5a
    .line 139
    new-instance v0, Ljava/lang/IllegalStateException;

    #@5c
    const-string/jumbo v1, "Delay has missing or invalid duration"

    #@5f
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@62
    throw v0

    #@63
    .line 141
    :cond_3
    const-string/jumbo v0, "report"

    #@66
    iget-object v1, p0, Lcom/android/commands/hid/Event$Builder;->mEvent:Lcom/android/commands/hid/Event;

    #@68
    invoke-static {v1}, Lcom/android/commands/hid/Event;->-get0(Lcom/android/commands/hid/Event;)Ljava/lang/String;

    #@6b
    move-result-object v1

    #@6c
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6f
    move-result v0

    #@70
    if-eqz v0, :cond_4

    #@72
    .line 142
    iget-object v0, p0, Lcom/android/commands/hid/Event$Builder;->mEvent:Lcom/android/commands/hid/Event;

    #@74
    invoke-static {v0}, Lcom/android/commands/hid/Event;->-get4(Lcom/android/commands/hid/Event;)[B

    #@77
    move-result-object v0

    #@78
    if-nez v0, :cond_4

    #@7a
    .line 143
    new-instance v0, Ljava/lang/IllegalStateException;

    #@7c
    const-string/jumbo v1, "Report command is missing report data"

    #@7f
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@82
    throw v0

    #@83
    .line 146
    :cond_4
    iget-object v0, p0, Lcom/android/commands/hid/Event$Builder;->mEvent:Lcom/android/commands/hid/Event;

    #@85
    return-object v0
.end method

.method public setDescriptor([B)V
    .locals 1
    .param p1, "descriptor"    # [B

    #@0
    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/commands/hid/Event$Builder;->mEvent:Lcom/android/commands/hid/Event;

    #@2
    invoke-static {v0, p1}, Lcom/android/commands/hid/Event;->-set1(Lcom/android/commands/hid/Event;[B)[B

    #@5
    .line 107
    return-void
.end method

.method public setDuration(I)V
    .locals 1
    .param p1, "duration"    # I

    #@0
    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/commands/hid/Event$Builder;->mEvent:Lcom/android/commands/hid/Event;

    #@2
    invoke-static {v0, p1}, Lcom/android/commands/hid/Event;->-set2(Lcom/android/commands/hid/Event;I)I

    #@5
    .line 123
    return-void
.end method

.method public setId(I)V
    .locals 1
    .param p1, "id"    # I

    #@0
    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/commands/hid/Event$Builder;->mEvent:Lcom/android/commands/hid/Event;

    #@2
    invoke-static {v0, p1}, Lcom/android/commands/hid/Event;->-set3(Lcom/android/commands/hid/Event;I)I

    #@5
    .line 95
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/commands/hid/Event$Builder;->mEvent:Lcom/android/commands/hid/Event;

    #@2
    invoke-static {v0, p1}, Lcom/android/commands/hid/Event;->-set4(Lcom/android/commands/hid/Event;Ljava/lang/String;)Ljava/lang/String;

    #@5
    .line 103
    return-void
.end method

.method public setPid(I)V
    .locals 1
    .param p1, "pid"    # I

    #@0
    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/commands/hid/Event$Builder;->mEvent:Lcom/android/commands/hid/Event;

    #@2
    invoke-static {v0, p1}, Lcom/android/commands/hid/Event;->-set5(Lcom/android/commands/hid/Event;I)I

    #@5
    .line 119
    return-void
.end method

.method public setReport([B)V
    .locals 1
    .param p1, "report"    # [B

    #@0
    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/commands/hid/Event$Builder;->mEvent:Lcom/android/commands/hid/Event;

    #@2
    invoke-static {v0, p1}, Lcom/android/commands/hid/Event;->-set6(Lcom/android/commands/hid/Event;[B)[B

    #@5
    .line 111
    return-void
.end method

.method public setVid(I)V
    .locals 1
    .param p1, "vid"    # I

    #@0
    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/commands/hid/Event$Builder;->mEvent:Lcom/android/commands/hid/Event;

    #@2
    invoke-static {v0, p1}, Lcom/android/commands/hid/Event;->-set7(Lcom/android/commands/hid/Event;I)I

    #@5
    .line 115
    return-void
.end method
