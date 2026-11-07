.class public final Landroid/os/PerfettoTrackEventExtra$Builder;
.super Ljava/lang/Object;
.source "PerfettoTrackEventExtra.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/PerfettoTrackEventExtra;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mArgBoolCache:Landroid/os/PerfettoTrackEventExtra$RingBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/PerfettoTrackEventExtra$RingBuffer<",
            "Landroid/os/PerfettoTrackEventExtra$ArgBool;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mArgDoubleCache:Landroid/os/PerfettoTrackEventExtra$RingBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/PerfettoTrackEventExtra$RingBuffer<",
            "Landroid/os/PerfettoTrackEventExtra$ArgDouble;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mArgInt64Cache:Landroid/os/PerfettoTrackEventExtra$RingBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/PerfettoTrackEventExtra$RingBuffer<",
            "Landroid/os/PerfettoTrackEventExtra$ArgInt64;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mArgStringCache:Landroid/os/PerfettoTrackEventExtra$RingBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/PerfettoTrackEventExtra$RingBuffer<",
            "Landroid/os/PerfettoTrackEventExtra$ArgString;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mBuilderCache:Landroid/os/PerfettoTrackEventExtra$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/PerfettoTrackEventExtra$Pool<",
            "Landroid/os/PerfettoTrackEventExtra$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCategory:Landroid/os/PerfettoTrace$Category;

.field private final blacklist mCounterDouble:Landroid/os/PerfettoTrackEventExtra$CounterDouble;

.field private final blacklist mCounterInt64:Landroid/os/PerfettoTrackEventExtra$CounterInt64;

.field private final blacklist mCounterTrackCache:Landroid/os/PerfettoTrackEventExtra$RingBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/PerfettoTrackEventExtra$RingBuffer<",
            "Landroid/os/PerfettoTrackEventExtra$CounterTrack;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCurrentContainer:Landroid/os/PerfettoTrackEventExtra$FieldContainer;

.field private blacklist mEventName:Ljava/lang/String;

.field private final blacklist mExtra:Landroid/os/PerfettoTrackEventExtra;

.field private final blacklist mFieldDoubleCache:Landroid/os/PerfettoTrackEventExtra$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/PerfettoTrackEventExtra$Pool<",
            "Landroid/os/PerfettoTrackEventExtra$FieldDouble;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mFieldInt64Cache:Landroid/os/PerfettoTrackEventExtra$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/PerfettoTrackEventExtra$Pool<",
            "Landroid/os/PerfettoTrackEventExtra$FieldInt64;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mFieldNestedCache:Landroid/os/PerfettoTrackEventExtra$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/PerfettoTrackEventExtra$Pool<",
            "Landroid/os/PerfettoTrackEventExtra$FieldNested;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mFieldStringCache:Landroid/os/PerfettoTrackEventExtra$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/PerfettoTrackEventExtra$Pool<",
            "Landroid/os/PerfettoTrackEventExtra$FieldString;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mFlow:Landroid/os/PerfettoTrackEventExtra$Flow;

.field private blacklist mIsBuilt:Z

.field private final blacklist mIsCategoryEnabled:Z

.field private final blacklist mNamedTrackCache:Landroid/os/PerfettoTrackEventExtra$RingBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/PerfettoTrackEventExtra$RingBuffer<",
            "Landroid/os/PerfettoTrackEventExtra$NamedTrack;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mParent:Landroid/os/PerfettoTrackEventExtra$Builder;

.field private final blacklist mProto:Landroid/os/PerfettoTrackEventExtra$Proto;

.field private final blacklist mTerminatingFlow:Landroid/os/PerfettoTrackEventExtra$Flow;

.field private blacklist mTraceType:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$minitInternal(Landroid/os/PerfettoTrackEventExtra$Builder;Landroid/os/PerfettoTrackEventExtra$Builder;Landroid/os/PerfettoTrackEventExtra$FieldContainer;)Landroid/os/PerfettoTrackEventExtra$Builder;
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/os/PerfettoTrackEventExtra$Builder;->initInternal(Landroid/os/PerfettoTrackEventExtra$Builder;Landroid/os/PerfettoTrackEventExtra$FieldContainer;)Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object p0

    return-object p0
.end method

.method private constructor blacklist <init>()V
    .registers 3

    .line 179
    invoke-static {}, Landroid/os/PerfettoTrackEventExtra;->-$$Nest$sfgetsTrackEventExtra()Ljava/lang/ThreadLocal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PerfettoTrackEventExtra;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/os/PerfettoTrackEventExtra$Builder;-><init>(Landroid/os/PerfettoTrackEventExtra;Z)V

    .line 180
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/PerfettoTrackEventExtra-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/os/PerfettoTrackEventExtra$Builder;-><init>()V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PerfettoTrackEventExtra;Z)V
    .registers 5
    .param p1, "extra"    # Landroid/os/PerfettoTrackEventExtra;
    .param p2, "isCategoryEnabled"    # Z

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    iput-boolean p2, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mIsCategoryEnabled:Z

    .line 184
    iput-object p1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    .line 185
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    const/4 v1, 0x0

    if-nez v0, :cond_e

    move-object v0, v1

    goto :goto_14

    :cond_e
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    invoke-static {v0}, Landroid/os/PerfettoTrackEventExtra;->-$$Nest$fgetmNamedTrackCache(Landroid/os/PerfettoTrackEventExtra;)Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    move-result-object v0

    :goto_14
    iput-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mNamedTrackCache:Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    .line 186
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    if-nez v0, :cond_1c

    move-object v0, v1

    goto :goto_22

    :cond_1c
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    invoke-static {v0}, Landroid/os/PerfettoTrackEventExtra;->-$$Nest$fgetmCounterTrackCache(Landroid/os/PerfettoTrackEventExtra;)Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    move-result-object v0

    :goto_22
    iput-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mCounterTrackCache:Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    .line 187
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    if-nez v0, :cond_2a

    move-object v0, v1

    goto :goto_30

    :cond_2a
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    invoke-static {v0}, Landroid/os/PerfettoTrackEventExtra;->-$$Nest$fgetmArgInt64Cache(Landroid/os/PerfettoTrackEventExtra;)Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    move-result-object v0

    :goto_30
    iput-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mArgInt64Cache:Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    .line 188
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    if-nez v0, :cond_38

    move-object v0, v1

    goto :goto_3e

    :cond_38
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    invoke-static {v0}, Landroid/os/PerfettoTrackEventExtra;->-$$Nest$fgetmArgDoubleCache(Landroid/os/PerfettoTrackEventExtra;)Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    move-result-object v0

    :goto_3e
    iput-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mArgDoubleCache:Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    .line 189
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    if-nez v0, :cond_46

    move-object v0, v1

    goto :goto_4c

    :cond_46
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    invoke-static {v0}, Landroid/os/PerfettoTrackEventExtra;->-$$Nest$fgetmArgBoolCache(Landroid/os/PerfettoTrackEventExtra;)Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    move-result-object v0

    :goto_4c
    iput-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mArgBoolCache:Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    .line 190
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    if-nez v0, :cond_54

    move-object v0, v1

    goto :goto_5a

    :cond_54
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    invoke-static {v0}, Landroid/os/PerfettoTrackEventExtra;->-$$Nest$fgetmArgStringCache(Landroid/os/PerfettoTrackEventExtra;)Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    move-result-object v0

    :goto_5a
    iput-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mArgStringCache:Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    .line 191
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    if-nez v0, :cond_62

    move-object v0, v1

    goto :goto_68

    :cond_62
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    invoke-static {v0}, Landroid/os/PerfettoTrackEventExtra;->-$$Nest$fgetmFieldInt64Cache(Landroid/os/PerfettoTrackEventExtra;)Landroid/os/PerfettoTrackEventExtra$Pool;

    move-result-object v0

    :goto_68
    iput-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mFieldInt64Cache:Landroid/os/PerfettoTrackEventExtra$Pool;

    .line 192
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    if-nez v0, :cond_70

    move-object v0, v1

    goto :goto_76

    :cond_70
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    invoke-static {v0}, Landroid/os/PerfettoTrackEventExtra;->-$$Nest$fgetmFieldDoubleCache(Landroid/os/PerfettoTrackEventExtra;)Landroid/os/PerfettoTrackEventExtra$Pool;

    move-result-object v0

    :goto_76
    iput-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mFieldDoubleCache:Landroid/os/PerfettoTrackEventExtra$Pool;

    .line 193
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    if-nez v0, :cond_7e

    move-object v0, v1

    goto :goto_84

    :cond_7e
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    invoke-static {v0}, Landroid/os/PerfettoTrackEventExtra;->-$$Nest$fgetmFieldStringCache(Landroid/os/PerfettoTrackEventExtra;)Landroid/os/PerfettoTrackEventExtra$Pool;

    move-result-object v0

    :goto_84
    iput-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mFieldStringCache:Landroid/os/PerfettoTrackEventExtra$Pool;

    .line 194
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    if-nez v0, :cond_8c

    move-object v0, v1

    goto :goto_92

    :cond_8c
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    invoke-static {v0}, Landroid/os/PerfettoTrackEventExtra;->-$$Nest$fgetmFieldNestedCache(Landroid/os/PerfettoTrackEventExtra;)Landroid/os/PerfettoTrackEventExtra$Pool;

    move-result-object v0

    :goto_92
    iput-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mFieldNestedCache:Landroid/os/PerfettoTrackEventExtra$Pool;

    .line 195
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    if-nez v0, :cond_9a

    move-object v0, v1

    goto :goto_a0

    :cond_9a
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    invoke-static {v0}, Landroid/os/PerfettoTrackEventExtra;->-$$Nest$fgetmBuilderCache(Landroid/os/PerfettoTrackEventExtra;)Landroid/os/PerfettoTrackEventExtra$Pool;

    move-result-object v0

    :goto_a0
    iput-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mBuilderCache:Landroid/os/PerfettoTrackEventExtra$Pool;

    .line 197
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    if-nez v0, :cond_a8

    move-object v0, v1

    goto :goto_ae

    :cond_a8
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    invoke-static {v0}, Landroid/os/PerfettoTrackEventExtra;->-$$Nest$mgetCounterInt64(Landroid/os/PerfettoTrackEventExtra;)Landroid/os/PerfettoTrackEventExtra$CounterInt64;

    move-result-object v0

    :goto_ae
    iput-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mCounterInt64:Landroid/os/PerfettoTrackEventExtra$CounterInt64;

    .line 198
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    if-nez v0, :cond_b6

    move-object v0, v1

    goto :goto_bc

    :cond_b6
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    invoke-static {v0}, Landroid/os/PerfettoTrackEventExtra;->-$$Nest$mgetCounterDouble(Landroid/os/PerfettoTrackEventExtra;)Landroid/os/PerfettoTrackEventExtra$CounterDouble;

    move-result-object v0

    :goto_bc
    iput-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mCounterDouble:Landroid/os/PerfettoTrackEventExtra$CounterDouble;

    .line 199
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    if-nez v0, :cond_c4

    move-object v0, v1

    goto :goto_ca

    :cond_c4
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    invoke-static {v0}, Landroid/os/PerfettoTrackEventExtra;->-$$Nest$mgetProto(Landroid/os/PerfettoTrackEventExtra;)Landroid/os/PerfettoTrackEventExtra$Proto;

    move-result-object v0

    :goto_ca
    iput-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mProto:Landroid/os/PerfettoTrackEventExtra$Proto;

    .line 200
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    if-nez v0, :cond_d2

    move-object v0, v1

    goto :goto_d8

    :cond_d2
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    invoke-static {v0}, Landroid/os/PerfettoTrackEventExtra;->-$$Nest$mgetFlow(Landroid/os/PerfettoTrackEventExtra;)Landroid/os/PerfettoTrackEventExtra$Flow;

    move-result-object v0

    :goto_d8
    iput-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mFlow:Landroid/os/PerfettoTrackEventExtra$Flow;

    .line 201
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    if-nez v0, :cond_df

    goto :goto_e5

    :cond_df
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    invoke-static {v0}, Landroid/os/PerfettoTrackEventExtra;->-$$Nest$mgetTerminatingFlow(Landroid/os/PerfettoTrackEventExtra;)Landroid/os/PerfettoTrackEventExtra$Flow;

    move-result-object v1

    :goto_e5
    iput-object v1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mTerminatingFlow:Landroid/os/PerfettoTrackEventExtra$Flow;

    .line 202
    return-void
.end method

.method private blacklist checkContainer()V
    .registers 3

    .line 613
    invoke-direct {p0}, Landroid/os/PerfettoTrackEventExtra$Builder;->checkState()V

    .line 614
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mCurrentContainer:Landroid/os/PerfettoTrackEventExtra$FieldContainer;

    if-eqz v0, :cond_8

    .line 618
    return-void

    .line 615
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Field operations must be within beginProto/endProto block"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist checkParent()V
    .registers 3

    .line 606
    invoke-direct {p0}, Landroid/os/PerfettoTrackEventExtra$Builder;->checkState()V

    .line 607
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mParent:Landroid/os/PerfettoTrackEventExtra$Builder;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 610
    return-void

    .line 608
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Operation not supported for proto"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist checkState()V
    .registers 3

    .line 599
    iget-boolean v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mIsBuilt:Z

    if-nez v0, :cond_5

    .line 603
    return-void

    .line 600
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This builder has already been used. Create a new builder for another event."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist initInternal(Landroid/os/PerfettoTrackEventExtra$Builder;Landroid/os/PerfettoTrackEventExtra$FieldContainer;)Landroid/os/PerfettoTrackEventExtra$Builder;
    .registers 4
    .param p1, "parent"    # Landroid/os/PerfettoTrackEventExtra$Builder;
    .param p2, "field"    # Landroid/os/PerfettoTrackEventExtra$FieldContainer;

    .line 591
    iput-object p1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mParent:Landroid/os/PerfettoTrackEventExtra$Builder;

    .line 592
    iput-object p2, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mCurrentContainer:Landroid/os/PerfettoTrackEventExtra$FieldContainer;

    .line 593
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mIsBuilt:Z

    .line 595
    return-object p0
.end method


# virtual methods
.method public blacklist addArg(Ljava/lang/String;D)Landroid/os/PerfettoTrackEventExtra$Builder;
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # D

    .line 293
    iget-boolean v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mIsCategoryEnabled:Z

    if-nez v0, :cond_5

    .line 294
    return-object p0

    .line 299
    :cond_5
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mArgDoubleCache:Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/PerfettoTrackEventExtra$RingBuffer;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PerfettoTrackEventExtra$ArgDouble;

    .line 300
    .local v0, "arg":Landroid/os/PerfettoTrackEventExtra$ArgDouble;
    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Landroid/os/PerfettoTrackEventExtra$ArgDouble;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 301
    :cond_1d
    new-instance v1, Landroid/os/PerfettoTrackEventExtra$ArgDouble;

    invoke-direct {v1, p1}, Landroid/os/PerfettoTrackEventExtra$ArgDouble;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 302
    iget-object v1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mArgDoubleCache:Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/os/PerfettoTrackEventExtra$RingBuffer;->put(ILjava/lang/Object;)V

    .line 304
    :cond_2c
    invoke-virtual {v0, p2, p3}, Landroid/os/PerfettoTrackEventExtra$ArgDouble;->setValue(D)V

    .line 305
    iget-object v1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    invoke-virtual {v1, v0}, Landroid/os/PerfettoTrackEventExtra;->addPerfettoPointer(Landroid/os/PerfettoTrackEventExtra$PerfettoPointer;)V

    .line 306
    return-object p0
.end method

.method public blacklist addArg(Ljava/lang/String;J)Landroid/os/PerfettoTrackEventExtra$Builder;
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # J

    .line 253
    iget-boolean v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mIsCategoryEnabled:Z

    if-nez v0, :cond_5

    .line 254
    return-object p0

    .line 259
    :cond_5
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mArgInt64Cache:Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/PerfettoTrackEventExtra$RingBuffer;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PerfettoTrackEventExtra$ArgInt64;

    .line 260
    .local v0, "arg":Landroid/os/PerfettoTrackEventExtra$ArgInt64;
    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Landroid/os/PerfettoTrackEventExtra$ArgInt64;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 261
    :cond_1d
    new-instance v1, Landroid/os/PerfettoTrackEventExtra$ArgInt64;

    invoke-direct {v1, p1}, Landroid/os/PerfettoTrackEventExtra$ArgInt64;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 262
    iget-object v1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mArgInt64Cache:Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/os/PerfettoTrackEventExtra$RingBuffer;->put(ILjava/lang/Object;)V

    .line 264
    :cond_2c
    invoke-virtual {v0, p2, p3}, Landroid/os/PerfettoTrackEventExtra$ArgInt64;->setValue(J)V

    .line 265
    iget-object v1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    invoke-virtual {v1, v0}, Landroid/os/PerfettoTrackEventExtra;->addPerfettoPointer(Landroid/os/PerfettoTrackEventExtra$PerfettoPointer;)V

    .line 266
    return-object p0
.end method

.method public blacklist addArg(Ljava/lang/String;Ljava/lang/String;)Landroid/os/PerfettoTrackEventExtra$Builder;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/String;

    .line 313
    iget-boolean v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mIsCategoryEnabled:Z

    if-nez v0, :cond_5

    .line 314
    return-object p0

    .line 319
    :cond_5
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mArgStringCache:Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/PerfettoTrackEventExtra$RingBuffer;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PerfettoTrackEventExtra$ArgString;

    .line 320
    .local v0, "arg":Landroid/os/PerfettoTrackEventExtra$ArgString;
    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Landroid/os/PerfettoTrackEventExtra$ArgString;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 321
    :cond_1d
    new-instance v1, Landroid/os/PerfettoTrackEventExtra$ArgString;

    invoke-direct {v1, p1}, Landroid/os/PerfettoTrackEventExtra$ArgString;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 322
    iget-object v1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mArgStringCache:Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/os/PerfettoTrackEventExtra$RingBuffer;->put(ILjava/lang/Object;)V

    .line 324
    :cond_2c
    invoke-virtual {v0, p2}, Landroid/os/PerfettoTrackEventExtra$ArgString;->setValue(Ljava/lang/String;)V

    .line 325
    iget-object v1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    invoke-virtual {v1, v0}, Landroid/os/PerfettoTrackEventExtra;->addPerfettoPointer(Landroid/os/PerfettoTrackEventExtra$PerfettoPointer;)V

    .line 326
    return-object p0
.end method

.method public blacklist addArg(Ljava/lang/String;Z)Landroid/os/PerfettoTrackEventExtra$Builder;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # Z

    .line 273
    iget-boolean v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mIsCategoryEnabled:Z

    if-nez v0, :cond_5

    .line 274
    return-object p0

    .line 279
    :cond_5
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mArgBoolCache:Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/PerfettoTrackEventExtra$RingBuffer;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PerfettoTrackEventExtra$ArgBool;

    .line 280
    .local v0, "arg":Landroid/os/PerfettoTrackEventExtra$ArgBool;
    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Landroid/os/PerfettoTrackEventExtra$ArgBool;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 281
    :cond_1d
    new-instance v1, Landroid/os/PerfettoTrackEventExtra$ArgBool;

    invoke-direct {v1, p1}, Landroid/os/PerfettoTrackEventExtra$ArgBool;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 282
    iget-object v1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mArgBoolCache:Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/os/PerfettoTrackEventExtra$RingBuffer;->put(ILjava/lang/Object;)V

    .line 284
    :cond_2c
    invoke-virtual {v0, p2}, Landroid/os/PerfettoTrackEventExtra$ArgBool;->setValue(Z)V

    .line 285
    iget-object v1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    invoke-virtual {v1, v0}, Landroid/os/PerfettoTrackEventExtra;->addPerfettoPointer(Landroid/os/PerfettoTrackEventExtra$PerfettoPointer;)V

    .line 286
    return-object p0
.end method

.method public blacklist addField(JD)Landroid/os/PerfettoTrackEventExtra$Builder;
    .registers 8
    .param p1, "id"    # J
    .param p3, "val"    # D

    .line 497
    iget-boolean v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mIsCategoryEnabled:Z

    if-nez v0, :cond_5

    .line 498
    return-object p0

    .line 503
    :cond_5
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mFieldDoubleCache:Landroid/os/PerfettoTrackEventExtra$Pool;

    invoke-static {}, Landroid/os/PerfettoTrackEventExtra;->-$$Nest$sfgetsFieldDoubleSupplier()Ljava/util/function/Supplier;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/PerfettoTrackEventExtra$Pool;->get(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PerfettoTrackEventExtra$FieldDouble;

    .line 504
    .local v0, "field":Landroid/os/PerfettoTrackEventExtra$FieldDouble;
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/os/PerfettoTrackEventExtra$FieldDouble;->setValue(JD)V

    .line 505
    iget-object v1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    iget-object v2, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mCurrentContainer:Landroid/os/PerfettoTrackEventExtra$FieldContainer;

    invoke-virtual {v1, v2, v0}, Landroid/os/PerfettoTrackEventExtra;->addPerfettoPointer(Landroid/os/PerfettoTrackEventExtra$FieldContainer;Landroid/os/PerfettoTrackEventExtra$PerfettoPointer;)V

    .line 506
    return-object p0
.end method

.method public blacklist addField(JJ)Landroid/os/PerfettoTrackEventExtra$Builder;
    .registers 8
    .param p1, "id"    # J
    .param p3, "val"    # J

    .line 481
    iget-boolean v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mIsCategoryEnabled:Z

    if-nez v0, :cond_5

    .line 482
    return-object p0

    .line 487
    :cond_5
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mFieldInt64Cache:Landroid/os/PerfettoTrackEventExtra$Pool;

    invoke-static {}, Landroid/os/PerfettoTrackEventExtra;->-$$Nest$sfgetsFieldInt64Supplier()Ljava/util/function/Supplier;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/PerfettoTrackEventExtra$Pool;->get(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PerfettoTrackEventExtra$FieldInt64;

    .line 488
    .local v0, "field":Landroid/os/PerfettoTrackEventExtra$FieldInt64;
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/os/PerfettoTrackEventExtra$FieldInt64;->setValue(JJ)V

    .line 489
    iget-object v1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    iget-object v2, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mCurrentContainer:Landroid/os/PerfettoTrackEventExtra$FieldContainer;

    invoke-virtual {v1, v2, v0}, Landroid/os/PerfettoTrackEventExtra;->addPerfettoPointer(Landroid/os/PerfettoTrackEventExtra$FieldContainer;Landroid/os/PerfettoTrackEventExtra$PerfettoPointer;)V

    .line 490
    return-object p0
.end method

.method public blacklist addField(JLjava/lang/String;)Landroid/os/PerfettoTrackEventExtra$Builder;
    .registers 7
    .param p1, "id"    # J
    .param p3, "val"    # Ljava/lang/String;

    .line 513
    iget-boolean v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mIsCategoryEnabled:Z

    if-nez v0, :cond_5

    .line 514
    return-object p0

    .line 519
    :cond_5
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mFieldStringCache:Landroid/os/PerfettoTrackEventExtra$Pool;

    invoke-static {}, Landroid/os/PerfettoTrackEventExtra;->-$$Nest$sfgetsFieldStringSupplier()Ljava/util/function/Supplier;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/PerfettoTrackEventExtra$Pool;->get(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PerfettoTrackEventExtra$FieldString;

    .line 520
    .local v0, "field":Landroid/os/PerfettoTrackEventExtra$FieldString;
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/PerfettoTrackEventExtra$FieldString;->setValue(JLjava/lang/String;)V

    .line 521
    iget-object v1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    iget-object v2, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mCurrentContainer:Landroid/os/PerfettoTrackEventExtra$FieldContainer;

    invoke-virtual {v1, v2, v0}, Landroid/os/PerfettoTrackEventExtra;->addPerfettoPointer(Landroid/os/PerfettoTrackEventExtra$FieldContainer;Landroid/os/PerfettoTrackEventExtra$PerfettoPointer;)V

    .line 522
    return-object p0
.end method

.method public blacklist beginNested(J)Landroid/os/PerfettoTrackEventExtra$Builder;
    .registers 6
    .param p1, "id"    # J

    .line 564
    iget-boolean v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mIsCategoryEnabled:Z

    if-nez v0, :cond_5

    .line 565
    return-object p0

    .line 570
    :cond_5
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mFieldNestedCache:Landroid/os/PerfettoTrackEventExtra$Pool;

    invoke-static {}, Landroid/os/PerfettoTrackEventExtra;->-$$Nest$sfgetsFieldNestedSupplier()Ljava/util/function/Supplier;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/PerfettoTrackEventExtra$Pool;->get(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PerfettoTrackEventExtra$FieldNested;

    .line 571
    .local v0, "field":Landroid/os/PerfettoTrackEventExtra$FieldNested;
    invoke-virtual {v0, p1, p2}, Landroid/os/PerfettoTrackEventExtra$FieldNested;->setId(J)V

    .line 572
    iget-object v1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    iget-object v2, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mCurrentContainer:Landroid/os/PerfettoTrackEventExtra$FieldContainer;

    invoke-virtual {v1, v2, v0}, Landroid/os/PerfettoTrackEventExtra;->addPerfettoPointer(Landroid/os/PerfettoTrackEventExtra$FieldContainer;Landroid/os/PerfettoTrackEventExtra$PerfettoPointer;)V

    .line 573
    iget-object v1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mBuilderCache:Landroid/os/PerfettoTrackEventExtra$Pool;

    invoke-static {}, Landroid/os/PerfettoTrackEventExtra;->-$$Nest$sfgetsBuilderSupplier()Ljava/util/function/Supplier;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/PerfettoTrackEventExtra$Pool;->get(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PerfettoTrackEventExtra$Builder;

    invoke-direct {v1, p0, v0}, Landroid/os/PerfettoTrackEventExtra$Builder;->initInternal(Landroid/os/PerfettoTrackEventExtra$Builder;Landroid/os/PerfettoTrackEventExtra$FieldContainer;)Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object v1

    return-object v1
.end method

.method public blacklist beginProto()Landroid/os/PerfettoTrackEventExtra$Builder;
    .registers 3

    .line 534
    iget-boolean v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mIsCategoryEnabled:Z

    if-nez v0, :cond_5

    .line 535
    return-object p0

    .line 540
    :cond_5
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mProto:Landroid/os/PerfettoTrackEventExtra$Proto;

    invoke-virtual {v0}, Landroid/os/PerfettoTrackEventExtra$Proto;->clearFields()V

    .line 541
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    iget-object v1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mProto:Landroid/os/PerfettoTrackEventExtra$Proto;

    invoke-virtual {v0, v1}, Landroid/os/PerfettoTrackEventExtra;->addPerfettoPointer(Landroid/os/PerfettoTrackEventExtra$PerfettoPointer;)V

    .line 542
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mBuilderCache:Landroid/os/PerfettoTrackEventExtra$Pool;

    invoke-static {}, Landroid/os/PerfettoTrackEventExtra;->-$$Nest$sfgetsBuilderSupplier()Ljava/util/function/Supplier;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/PerfettoTrackEventExtra$Pool;->get(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PerfettoTrackEventExtra$Builder;

    iget-object v1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mProto:Landroid/os/PerfettoTrackEventExtra$Proto;

    invoke-direct {v0, p0, v1}, Landroid/os/PerfettoTrackEventExtra$Builder;->initInternal(Landroid/os/PerfettoTrackEventExtra$Builder;Landroid/os/PerfettoTrackEventExtra$FieldContainer;)Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist emit()V
    .registers 8

    .line 208
    iget-boolean v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mIsCategoryEnabled:Z

    if-nez v0, :cond_5

    .line 209
    return-void

    .line 215
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mIsBuilt:Z

    .line 216
    iget v1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mTraceType:I

    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mCategory:Landroid/os/PerfettoTrace$Category;

    invoke-virtual {v0}, Landroid/os/PerfettoTrace$Category;->getPtr()J

    move-result-wide v2

    iget-object v4, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mEventName:Ljava/lang/String;

    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    invoke-virtual {v0}, Landroid/os/PerfettoTrackEventExtra;->getPtr()J

    move-result-wide v5

    invoke-static/range {v1 .. v6}, Landroid/os/PerfettoTrackEventExtra;->-$$Nest$smnative_emit(IJLjava/lang/String;J)V

    .line 217
    return-void
.end method

.method public blacklist endNested()Landroid/os/PerfettoTrackEventExtra$Builder;
    .registers 3

    .line 580
    iget-boolean v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mIsCategoryEnabled:Z

    if-nez v0, :cond_5

    .line 581
    return-object p0

    .line 583
    :cond_5
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mParent:Landroid/os/PerfettoTrackEventExtra$Builder;

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mCurrentContainer:Landroid/os/PerfettoTrackEventExtra$FieldContainer;

    if-eqz v0, :cond_10

    .line 586
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mParent:Landroid/os/PerfettoTrackEventExtra$Builder;

    return-object v0

    .line 584
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No nested field to end"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist endProto()Landroid/os/PerfettoTrackEventExtra$Builder;
    .registers 3

    .line 549
    iget-boolean v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mIsCategoryEnabled:Z

    if-nez v0, :cond_5

    .line 550
    return-object p0

    .line 552
    :cond_5
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mParent:Landroid/os/PerfettoTrackEventExtra$Builder;

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mCurrentContainer:Landroid/os/PerfettoTrackEventExtra$FieldContainer;

    if-eqz v0, :cond_10

    .line 555
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mParent:Landroid/os/PerfettoTrackEventExtra$Builder;

    return-object v0

    .line 553
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No proto to end"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist init(ILandroid/os/PerfettoTrace$Category;)Landroid/os/PerfettoTrackEventExtra$Builder;
    .registers 4
    .param p1, "traceType"    # I
    .param p2, "category"    # Landroid/os/PerfettoTrace$Category;

    .line 223
    iget-boolean v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mIsCategoryEnabled:Z

    if-nez v0, :cond_5

    .line 224
    return-object p0

    .line 227
    :cond_5
    iput p1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mTraceType:I

    .line 228
    iput-object p2, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mCategory:Landroid/os/PerfettoTrace$Category;

    .line 229
    const-string v0, ""

    iput-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mEventName:Ljava/lang/String;

    .line 230
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mFieldInt64Cache:Landroid/os/PerfettoTrackEventExtra$Pool;

    invoke-virtual {v0}, Landroid/os/PerfettoTrackEventExtra$Pool;->reset()V

    .line 231
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mFieldDoubleCache:Landroid/os/PerfettoTrackEventExtra$Pool;

    invoke-virtual {v0}, Landroid/os/PerfettoTrackEventExtra$Pool;->reset()V

    .line 232
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mFieldStringCache:Landroid/os/PerfettoTrackEventExtra$Pool;

    invoke-virtual {v0}, Landroid/os/PerfettoTrackEventExtra$Pool;->reset()V

    .line 233
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mFieldNestedCache:Landroid/os/PerfettoTrackEventExtra$Pool;

    invoke-virtual {v0}, Landroid/os/PerfettoTrackEventExtra$Pool;->reset()V

    .line 234
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mBuilderCache:Landroid/os/PerfettoTrackEventExtra$Pool;

    invoke-virtual {v0}, Landroid/os/PerfettoTrackEventExtra$Pool;->reset()V

    .line 236
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    invoke-virtual {v0}, Landroid/os/PerfettoTrackEventExtra;->reset()V

    .line 238
    const/4 v0, 0x0

    invoke-direct {p0, p0, v0}, Landroid/os/PerfettoTrackEventExtra$Builder;->initInternal(Landroid/os/PerfettoTrackEventExtra$Builder;Landroid/os/PerfettoTrackEventExtra$FieldContainer;)Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist setCounter(D)Landroid/os/PerfettoTrackEventExtra$Builder;
    .registers 5
    .param p1, "val"    # D

    .line 466
    iget-boolean v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mIsCategoryEnabled:Z

    if-nez v0, :cond_5

    .line 467
    return-object p0

    .line 472
    :cond_5
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mCounterDouble:Landroid/os/PerfettoTrackEventExtra$CounterDouble;

    invoke-virtual {v0, p1, p2}, Landroid/os/PerfettoTrackEventExtra$CounterDouble;->setValue(D)V

    .line 473
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    iget-object v1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mCounterDouble:Landroid/os/PerfettoTrackEventExtra$CounterDouble;

    invoke-virtual {v0, v1}, Landroid/os/PerfettoTrackEventExtra;->addPerfettoPointer(Landroid/os/PerfettoTrackEventExtra$PerfettoPointer;)V

    .line 474
    return-object p0
.end method

.method public blacklist setCounter(J)Landroid/os/PerfettoTrackEventExtra$Builder;
    .registers 5
    .param p1, "val"    # J

    .line 450
    iget-boolean v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mIsCategoryEnabled:Z

    if-nez v0, :cond_5

    .line 451
    return-object p0

    .line 456
    :cond_5
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mCounterInt64:Landroid/os/PerfettoTrackEventExtra$CounterInt64;

    invoke-virtual {v0, p1, p2}, Landroid/os/PerfettoTrackEventExtra$CounterInt64;->setValue(J)V

    .line 457
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    iget-object v1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mCounterInt64:Landroid/os/PerfettoTrackEventExtra$CounterInt64;

    invoke-virtual {v0, v1}, Landroid/os/PerfettoTrackEventExtra;->addPerfettoPointer(Landroid/os/PerfettoTrackEventExtra$PerfettoPointer;)V

    .line 458
    return-object p0
.end method

.method public blacklist setEventName(Ljava/lang/String;)Landroid/os/PerfettoTrackEventExtra$Builder;
    .registers 2
    .param p1, "eventName"    # Ljava/lang/String;

    .line 245
    iput-object p1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mEventName:Ljava/lang/String;

    .line 246
    return-object p0
.end method

.method public blacklist setFlow(J)Landroid/os/PerfettoTrackEventExtra$Builder;
    .registers 5
    .param p1, "id"    # J

    .line 333
    iget-boolean v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mIsCategoryEnabled:Z

    if-nez v0, :cond_5

    .line 334
    return-object p0

    .line 339
    :cond_5
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mFlow:Landroid/os/PerfettoTrackEventExtra$Flow;

    invoke-virtual {v0, p1, p2}, Landroid/os/PerfettoTrackEventExtra$Flow;->setProcessFlow(J)V

    .line 340
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    iget-object v1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mFlow:Landroid/os/PerfettoTrackEventExtra$Flow;

    invoke-virtual {v0, v1}, Landroid/os/PerfettoTrackEventExtra;->addPerfettoPointer(Landroid/os/PerfettoTrackEventExtra$PerfettoPointer;)V

    .line 341
    return-object p0
.end method

.method public blacklist setTerminatingFlow(J)Landroid/os/PerfettoTrackEventExtra$Builder;
    .registers 5
    .param p1, "id"    # J

    .line 348
    iget-boolean v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mIsCategoryEnabled:Z

    if-nez v0, :cond_5

    .line 349
    return-object p0

    .line 354
    :cond_5
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mTerminatingFlow:Landroid/os/PerfettoTrackEventExtra$Flow;

    invoke-virtual {v0, p1, p2}, Landroid/os/PerfettoTrackEventExtra$Flow;->setProcessTerminatingFlow(J)V

    .line 355
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    iget-object v1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mTerminatingFlow:Landroid/os/PerfettoTrackEventExtra$Flow;

    invoke-virtual {v0, v1}, Landroid/os/PerfettoTrackEventExtra;->addPerfettoPointer(Landroid/os/PerfettoTrackEventExtra$PerfettoPointer;)V

    .line 356
    return-object p0
.end method

.method public blacklist usingCounterTrack(JLjava/lang/String;)Landroid/os/PerfettoTrackEventExtra$Builder;
    .registers 7
    .param p1, "parentUuid"    # J
    .param p3, "name"    # Ljava/lang/String;

    .line 407
    iget-boolean v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mIsCategoryEnabled:Z

    if-nez v0, :cond_5

    .line 408
    return-object p0

    .line 414
    :cond_5
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mCounterTrackCache:Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/PerfettoTrackEventExtra$RingBuffer;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PerfettoTrackEventExtra$CounterTrack;

    .line 415
    .local v0, "track":Landroid/os/PerfettoTrackEventExtra$CounterTrack;
    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Landroid/os/PerfettoTrackEventExtra$CounterTrack;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 416
    :cond_1d
    new-instance v1, Landroid/os/PerfettoTrackEventExtra$CounterTrack;

    invoke-direct {v1, p3, p1, p2}, Landroid/os/PerfettoTrackEventExtra$CounterTrack;-><init>(Ljava/lang/String;J)V

    move-object v0, v1

    .line 417
    iget-object v1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mCounterTrackCache:Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/os/PerfettoTrackEventExtra$RingBuffer;->put(ILjava/lang/Object;)V

    .line 419
    :cond_2c
    iget-object v1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    invoke-virtual {v1, v0}, Landroid/os/PerfettoTrackEventExtra;->addPerfettoPointer(Landroid/os/PerfettoTrackEventExtra$PerfettoPointer;)V

    .line 420
    return-object p0
.end method

.method public blacklist usingNamedTrack(JLjava/lang/String;)Landroid/os/PerfettoTrackEventExtra$Builder;
    .registers 7
    .param p1, "parentUuid"    # J
    .param p3, "name"    # Ljava/lang/String;

    .line 364
    iget-boolean v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mIsCategoryEnabled:Z

    if-nez v0, :cond_5

    .line 365
    return-object p0

    .line 371
    :cond_5
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mNamedTrackCache:Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/PerfettoTrackEventExtra$RingBuffer;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PerfettoTrackEventExtra$NamedTrack;

    .line 372
    .local v0, "track":Landroid/os/PerfettoTrackEventExtra$NamedTrack;
    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Landroid/os/PerfettoTrackEventExtra$NamedTrack;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 373
    :cond_1d
    new-instance v1, Landroid/os/PerfettoTrackEventExtra$NamedTrack;

    invoke-direct {v1, p3, p1, p2}, Landroid/os/PerfettoTrackEventExtra$NamedTrack;-><init>(Ljava/lang/String;J)V

    move-object v0, v1

    .line 374
    iget-object v1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mNamedTrackCache:Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/os/PerfettoTrackEventExtra$RingBuffer;->put(ILjava/lang/Object;)V

    .line 376
    :cond_2c
    iget-object v1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    invoke-virtual {v1, v0}, Landroid/os/PerfettoTrackEventExtra;->addPerfettoPointer(Landroid/os/PerfettoTrackEventExtra$PerfettoPointer;)V

    .line 377
    return-object p0
.end method

.method public blacklist usingProcessCounterTrack(Ljava/lang/String;)Landroid/os/PerfettoTrackEventExtra$Builder;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 428
    iget-boolean v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mIsCategoryEnabled:Z

    if-nez v0, :cond_5

    .line 429
    return-object p0

    .line 431
    :cond_5
    invoke-static {}, Landroid/os/PerfettoTrace;->getProcessTrackUuid()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1}, Landroid/os/PerfettoTrackEventExtra$Builder;->usingCounterTrack(JLjava/lang/String;)Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist usingProcessNamedTrack(Ljava/lang/String;)Landroid/os/PerfettoTrackEventExtra$Builder;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 385
    iget-boolean v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mIsCategoryEnabled:Z

    if-nez v0, :cond_5

    .line 386
    return-object p0

    .line 388
    :cond_5
    invoke-static {}, Landroid/os/PerfettoTrace;->getProcessTrackUuid()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1}, Landroid/os/PerfettoTrackEventExtra$Builder;->usingNamedTrack(JLjava/lang/String;)Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist usingThreadCounterTrack(JLjava/lang/String;)Landroid/os/PerfettoTrackEventExtra$Builder;
    .registers 6
    .param p1, "tid"    # J
    .param p3, "name"    # Ljava/lang/String;

    .line 439
    iget-boolean v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mIsCategoryEnabled:Z

    if-nez v0, :cond_5

    .line 440
    return-object p0

    .line 442
    :cond_5
    invoke-static {p1, p2}, Landroid/os/PerfettoTrace;->getThreadTrackUuid(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p3}, Landroid/os/PerfettoTrackEventExtra$Builder;->usingCounterTrack(JLjava/lang/String;)Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist usingThreadNamedTrack(JLjava/lang/String;)Landroid/os/PerfettoTrackEventExtra$Builder;
    .registers 6
    .param p1, "tid"    # J
    .param p3, "name"    # Ljava/lang/String;

    .line 396
    iget-boolean v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mIsCategoryEnabled:Z

    if-nez v0, :cond_5

    .line 397
    return-object p0

    .line 399
    :cond_5
    invoke-static {p1, p2}, Landroid/os/PerfettoTrace;->getThreadTrackUuid(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p3}, Landroid/os/PerfettoTrackEventExtra$Builder;->usingNamedTrack(JLjava/lang/String;)Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object v0

    return-object v0
.end method
