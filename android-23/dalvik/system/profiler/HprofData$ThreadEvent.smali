.class public final Ldalvik/system/profiler/HprofData$ThreadEvent;
.super Ljava/lang/Object;
.source "HprofData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldalvik/system/profiler/HprofData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ThreadEvent"
.end annotation


# static fields
.field private static synthetic -dalvik_system_profiler_HprofData$ThreadEventTypeSwitchesValues:[I


# instance fields
.field public final groupName:Ljava/lang/String;

.field public final objectId:I

.field public final parentGroupName:Ljava/lang/String;

.field public final threadId:I

.field public final threadName:Ljava/lang/String;

.field public final type:Ldalvik/system/profiler/HprofData$ThreadEventType;


# direct methods
.method private static synthetic -getdalvik_system_profiler_HprofData$ThreadEventTypeSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Ldalvik/system/profiler/HprofData$ThreadEvent;->-dalvik_system_profiler_HprofData$ThreadEventTypeSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Ldalvik/system/profiler/HprofData$ThreadEvent;->-dalvik_system_profiler_HprofData$ThreadEventTypeSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Ldalvik/system/profiler/HprofData$ThreadEventType;->values()[Ldalvik/system/profiler/HprofData$ThreadEventType;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Ldalvik/system/profiler/HprofData$ThreadEventType;->END:Ldalvik/system/profiler/HprofData$ThreadEventType;

    #@10
    invoke-virtual {v1}, Ldalvik/system/profiler/HprofData$ThreadEventType;->ordinal()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x1

    #@15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    #@17
    :goto_0
    :try_start_1
    sget-object v1, Ldalvik/system/profiler/HprofData$ThreadEventType;->START:Ldalvik/system/profiler/HprofData$ThreadEventType;

    #@19
    invoke-virtual {v1}, Ldalvik/system/profiler/HprofData$ThreadEventType;->ordinal()I

    #@1c
    move-result v1

    #@1d
    const/4 v2, 0x2

    #@1e
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    #@20
    :goto_1
    sput-object v0, Ldalvik/system/profiler/HprofData$ThreadEvent;->-dalvik_system_profiler_HprofData$ThreadEventTypeSwitchesValues:[I

    #@22
    return-object v0

    #@23
    :catch_0
    move-exception v1

    #@24
    goto :goto_1

    #@25
    :catch_1
    move-exception v1

    #@26
    goto :goto_0
.end method

.method private constructor <init>(Ldalvik/system/profiler/HprofData$ThreadEventType;I)V
    .locals 2
    .param p1, "type"    # Ldalvik/system/profiler/HprofData$ThreadEventType;
    .param p2, "threadId"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 83
    sget-object v0, Ldalvik/system/profiler/HprofData$ThreadEventType;->END:Ldalvik/system/profiler/HprofData$ThreadEventType;

    #@6
    iput-object v0, p0, Ldalvik/system/profiler/HprofData$ThreadEvent;->type:Ldalvik/system/profiler/HprofData$ThreadEventType;

    #@8
    .line 84
    const/4 v0, -0x1

    #@9
    iput v0, p0, Ldalvik/system/profiler/HprofData$ThreadEvent;->objectId:I

    #@b
    .line 85
    iput p2, p0, Ldalvik/system/profiler/HprofData$ThreadEvent;->threadId:I

    #@d
    .line 86
    iput-object v1, p0, Ldalvik/system/profiler/HprofData$ThreadEvent;->threadName:Ljava/lang/String;

    #@f
    .line 87
    iput-object v1, p0, Ldalvik/system/profiler/HprofData$ThreadEvent;->groupName:Ljava/lang/String;

    #@11
    .line 88
    iput-object v1, p0, Ldalvik/system/profiler/HprofData$ThreadEvent;->parentGroupName:Ljava/lang/String;

    #@13
    .line 82
    return-void
.end method

.method private constructor <init>(Ldalvik/system/profiler/HprofData$ThreadEventType;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "type"    # Ldalvik/system/profiler/HprofData$ThreadEventType;
    .param p2, "objectId"    # I
    .param p3, "threadId"    # I
    .param p4, "threadName"    # Ljava/lang/String;
    .param p5, "groupName"    # Ljava/lang/String;
    .param p6, "parentGroupName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 71
    if-nez p4, :cond_0

    #@5
    .line 72
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    const-string/jumbo v1, "threadName == null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 74
    :cond_0
    sget-object v0, Ldalvik/system/profiler/HprofData$ThreadEventType;->START:Ldalvik/system/profiler/HprofData$ThreadEventType;

    #@10
    iput-object v0, p0, Ldalvik/system/profiler/HprofData$ThreadEvent;->type:Ldalvik/system/profiler/HprofData$ThreadEventType;

    #@12
    .line 75
    iput p2, p0, Ldalvik/system/profiler/HprofData$ThreadEvent;->objectId:I

    #@14
    .line 76
    iput p3, p0, Ldalvik/system/profiler/HprofData$ThreadEvent;->threadId:I

    #@16
    .line 77
    iput-object p4, p0, Ldalvik/system/profiler/HprofData$ThreadEvent;->threadName:Ljava/lang/String;

    #@18
    .line 78
    iput-object p5, p0, Ldalvik/system/profiler/HprofData$ThreadEvent;->groupName:Ljava/lang/String;

    #@1a
    .line 79
    iput-object p6, p0, Ldalvik/system/profiler/HprofData$ThreadEvent;->parentGroupName:Ljava/lang/String;

    #@1c
    .line 70
    return-void
.end method

.method public static end(I)Ldalvik/system/profiler/HprofData$ThreadEvent;
    .locals 2
    .param p0, "threadId"    # I

    #@0
    .prologue
    .line 66
    new-instance v0, Ldalvik/system/profiler/HprofData$ThreadEvent;

    #@2
    sget-object v1, Ldalvik/system/profiler/HprofData$ThreadEventType;->END:Ldalvik/system/profiler/HprofData$ThreadEventType;

    #@4
    invoke-direct {v0, v1, p0}, Ldalvik/system/profiler/HprofData$ThreadEvent;-><init>(Ldalvik/system/profiler/HprofData$ThreadEventType;I)V

    #@7
    return-object v0
.end method

.method private static equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 119
    if-eq p0, p1, :cond_0

    #@2
    if-eqz p0, :cond_1

    #@4
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@7
    move-result v0

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x1

    #@a
    goto :goto_0

    #@b
    :cond_1
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method private static hashCode(Ljava/lang/Object;)I
    .locals 1
    .param p0, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 102
    if-nez p0, :cond_0

    #@2
    const/4 v0, 0x0

    #@3
    :goto_0
    return v0

    #@4
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    #@7
    move-result v0

    #@8
    goto :goto_0
.end method

.method public static start(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ldalvik/system/profiler/HprofData$ThreadEvent;
    .locals 7
    .param p0, "objectId"    # I
    .param p1, "threadId"    # I
    .param p2, "threadName"    # Ljava/lang/String;
    .param p3, "groupName"    # Ljava/lang/String;
    .param p4, "parentGroupName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 61
    new-instance v0, Ldalvik/system/profiler/HprofData$ThreadEvent;

    #@2
    sget-object v1, Ldalvik/system/profiler/HprofData$ThreadEventType;->START:Ldalvik/system/profiler/HprofData$ThreadEventType;

    #@4
    move v2, p0

    #@5
    move v3, p1

    #@6
    move-object v4, p2

    #@7
    move-object v5, p3

    #@8
    move-object v6, p4

    #@9
    invoke-direct/range {v0 .. v6}, Ldalvik/system/profiler/HprofData$ThreadEvent;-><init>(Ldalvik/system/profiler/HprofData$ThreadEventType;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@c
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 106
    instance-of v2, p1, Ldalvik/system/profiler/HprofData$ThreadEvent;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 107
    return v1

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 109
    check-cast v0, Ldalvik/system/profiler/HprofData$ThreadEvent;

    #@9
    .line 110
    .local v0, "event":Ldalvik/system/profiler/HprofData$ThreadEvent;
    iget-object v2, p0, Ldalvik/system/profiler/HprofData$ThreadEvent;->type:Ldalvik/system/profiler/HprofData$ThreadEventType;

    #@b
    iget-object v3, v0, Ldalvik/system/profiler/HprofData$ThreadEvent;->type:Ldalvik/system/profiler/HprofData$ThreadEventType;

    #@d
    if-ne v2, v3, :cond_1

    #@f
    .line 111
    iget v2, p0, Ldalvik/system/profiler/HprofData$ThreadEvent;->objectId:I

    #@11
    iget v3, v0, Ldalvik/system/profiler/HprofData$ThreadEvent;->objectId:I

    #@13
    if-ne v2, v3, :cond_1

    #@15
    .line 112
    iget v2, p0, Ldalvik/system/profiler/HprofData$ThreadEvent;->threadId:I

    #@17
    iget v3, v0, Ldalvik/system/profiler/HprofData$ThreadEvent;->threadId:I

    #@19
    if-ne v2, v3, :cond_1

    #@1b
    .line 113
    iget-object v2, p0, Ldalvik/system/profiler/HprofData$ThreadEvent;->threadName:Ljava/lang/String;

    #@1d
    iget-object v3, v0, Ldalvik/system/profiler/HprofData$ThreadEvent;->threadName:Ljava/lang/String;

    #@1f
    invoke-static {v2, v3}, Ldalvik/system/profiler/HprofData$ThreadEvent;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@22
    move-result v2

    #@23
    .line 110
    if-eqz v2, :cond_1

    #@25
    .line 114
    iget-object v2, p0, Ldalvik/system/profiler/HprofData$ThreadEvent;->groupName:Ljava/lang/String;

    #@27
    iget-object v3, v0, Ldalvik/system/profiler/HprofData$ThreadEvent;->groupName:Ljava/lang/String;

    #@29
    invoke-static {v2, v3}, Ldalvik/system/profiler/HprofData$ThreadEvent;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@2c
    move-result v2

    #@2d
    .line 110
    if-eqz v2, :cond_1

    #@2f
    .line 115
    iget-object v1, p0, Ldalvik/system/profiler/HprofData$ThreadEvent;->parentGroupName:Ljava/lang/String;

    #@31
    iget-object v2, v0, Ldalvik/system/profiler/HprofData$ThreadEvent;->parentGroupName:Ljava/lang/String;

    #@33
    invoke-static {v1, v2}, Ldalvik/system/profiler/HprofData$ThreadEvent;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@36
    move-result v1

    #@37
    .line 110
    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 93
    iget v1, p0, Ldalvik/system/profiler/HprofData$ThreadEvent;->objectId:I

    #@2
    add-int/lit16 v0, v1, 0x20f

    #@4
    .line 94
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    #@6
    iget v2, p0, Ldalvik/system/profiler/HprofData$ThreadEvent;->threadId:I

    #@8
    add-int v0, v1, v2

    #@a
    .line 95
    mul-int/lit8 v1, v0, 0x1f

    #@c
    iget-object v2, p0, Ldalvik/system/profiler/HprofData$ThreadEvent;->threadName:Ljava/lang/String;

    #@e
    invoke-static {v2}, Ldalvik/system/profiler/HprofData$ThreadEvent;->hashCode(Ljava/lang/Object;)I

    #@11
    move-result v2

    #@12
    add-int v0, v1, v2

    #@14
    .line 96
    mul-int/lit8 v1, v0, 0x1f

    #@16
    iget-object v2, p0, Ldalvik/system/profiler/HprofData$ThreadEvent;->groupName:Ljava/lang/String;

    #@18
    invoke-static {v2}, Ldalvik/system/profiler/HprofData$ThreadEvent;->hashCode(Ljava/lang/Object;)I

    #@1b
    move-result v2

    #@1c
    add-int v0, v1, v2

    #@1e
    .line 97
    mul-int/lit8 v1, v0, 0x1f

    #@20
    iget-object v2, p0, Ldalvik/system/profiler/HprofData$ThreadEvent;->parentGroupName:Ljava/lang/String;

    #@22
    invoke-static {v2}, Ldalvik/system/profiler/HprofData$ThreadEvent;->hashCode(Ljava/lang/Object;)I

    #@25
    move-result v2

    #@26
    add-int v0, v1, v2

    #@28
    .line 98
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 123
    invoke-static {}, Ldalvik/system/profiler/HprofData$ThreadEvent;->-getdalvik_system_profiler_HprofData$ThreadEventTypeSwitchesValues()[I

    #@5
    move-result-object v0

    #@6
    iget-object v1, p0, Ldalvik/system/profiler/HprofData$ThreadEvent;->type:Ldalvik/system/profiler/HprofData$ThreadEventType;

    #@8
    invoke-virtual {v1}, Ldalvik/system/profiler/HprofData$ThreadEventType;->ordinal()I

    #@b
    move-result v1

    #@c
    aget v0, v0, v1

    #@e
    packed-switch v0, :pswitch_data_0

    #@11
    .line 131
    new-instance v0, Ljava/lang/IllegalStateException;

    #@13
    iget-object v1, p0, Ldalvik/system/profiler/HprofData$ThreadEvent;->type:Ldalvik/system/profiler/HprofData$ThreadEventType;

    #@15
    invoke-virtual {v1}, Ldalvik/system/profiler/HprofData$ThreadEventType;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v0

    #@1d
    .line 126
    :pswitch_0
    const-string/jumbo v0, "THREAD START (obj=%d, id = %d, name=\"%s\", group=\"%s\")"

    #@20
    .line 125
    const/4 v1, 0x4

    #@21
    new-array v1, v1, [Ljava/lang/Object;

    #@23
    .line 127
    iget v2, p0, Ldalvik/system/profiler/HprofData$ThreadEvent;->objectId:I

    #@25
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@28
    move-result-object v2

    #@29
    aput-object v2, v1, v3

    #@2b
    iget v2, p0, Ldalvik/system/profiler/HprofData$ThreadEvent;->threadId:I

    #@2d
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@30
    move-result-object v2

    #@31
    aput-object v2, v1, v4

    #@33
    iget-object v2, p0, Ldalvik/system/profiler/HprofData$ThreadEvent;->threadName:Ljava/lang/String;

    #@35
    const/4 v3, 0x2

    #@36
    aput-object v2, v1, v3

    #@38
    iget-object v2, p0, Ldalvik/system/profiler/HprofData$ThreadEvent;->groupName:Ljava/lang/String;

    #@3a
    const/4 v3, 0x3

    #@3b
    aput-object v2, v1, v3

    #@3d
    .line 125
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@40
    move-result-object v0

    #@41
    return-object v0

    #@42
    .line 129
    :pswitch_1
    const-string/jumbo v0, "THREAD END (id = %d)"

    #@45
    new-array v1, v4, [Ljava/lang/Object;

    #@47
    iget v2, p0, Ldalvik/system/profiler/HprofData$ThreadEvent;->threadId:I

    #@49
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4c
    move-result-object v2

    #@4d
    aput-object v2, v1, v3

    #@4f
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@52
    move-result-object v0

    #@53
    return-object v0

    #@54
    .line 123
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
