.class public Landroid/view/InsetsSourceControl;
.super Ljava/lang/Object;
.source "InsetsSourceControl.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/InsetsSourceControl$Array;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/InsetsSourceControl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mId:I

.field private blacklist mImeStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

.field private final blacklist mInitiallyVisible:Z

.field private blacklist mInsetsHint:Landroid/graphics/Insets;

.field private final blacklist mLeash:Landroid/view/SurfaceControl;

.field private blacklist mParcelableFlags:I

.field private blacklist mSkipAnimationOnce:Z

.field private final blacklist mSurfacePosition:Landroid/graphics/Point;

.field private final blacklist mType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 252
    new-instance v0, Landroid/view/InsetsSourceControl$1;

    invoke-direct {v0}, Landroid/view/InsetsSourceControl$1;-><init>()V

    sput-object v0, Landroid/view/InsetsSourceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IILandroid/view/SurfaceControl;ZLandroid/graphics/Point;Landroid/graphics/Insets;)V
    .registers 7
    .param p1, "id"    # I
    .param p2, "type"    # I
    .param p3, "leash"    # Landroid/view/SurfaceControl;
    .param p4, "initiallyVisible"    # Z
    .param p5, "surfacePosition"    # Landroid/graphics/Point;
    .param p6, "insetsHint"    # Landroid/graphics/Insets;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput p1, p0, Landroid/view/InsetsSourceControl;->mId:I

    .line 66
    iput p2, p0, Landroid/view/InsetsSourceControl;->mType:I

    .line 67
    iput-object p3, p0, Landroid/view/InsetsSourceControl;->mLeash:Landroid/view/SurfaceControl;

    .line 68
    iput-boolean p4, p0, Landroid/view/InsetsSourceControl;->mInitiallyVisible:Z

    .line 69
    iput-object p5, p0, Landroid/view/InsetsSourceControl;->mSurfacePosition:Landroid/graphics/Point;

    .line 70
    iput-object p6, p0, Landroid/view/InsetsSourceControl;->mInsetsHint:Landroid/graphics/Insets;

    .line 71
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/InsetsSourceControl;->mId:I

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/InsetsSourceControl;->mType:I

    .line 91
    sget-object v0, Landroid/view/SurfaceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl;

    iput-object v0, p0, Landroid/view/InsetsSourceControl;->mLeash:Landroid/view/SurfaceControl;

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/InsetsSourceControl;->mInitiallyVisible:Z

    .line 93
    sget-object v0, Landroid/graphics/Point;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    iput-object v0, p0, Landroid/view/InsetsSourceControl;->mSurfacePosition:Landroid/graphics/Point;

    .line 94
    sget-object v0, Landroid/graphics/Insets;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Insets;

    iput-object v0, p0, Landroid/view/InsetsSourceControl;->mInsetsHint:Landroid/graphics/Insets;

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/InsetsSourceControl;->mSkipAnimationOnce:Z

    .line 96
    sget-object v0, Landroid/view/inputmethod/ImeTracker$Token;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/ImeTracker$Token;

    iput-object v0, p0, Landroid/view/InsetsSourceControl;->mImeStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    .line 97
    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/InsetsSourceControl;)V
    .registers 5
    .param p1, "other"    # Landroid/view/InsetsSourceControl;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iget v0, p1, Landroid/view/InsetsSourceControl;->mId:I

    iput v0, p0, Landroid/view/InsetsSourceControl;->mId:I

    .line 75
    iget v0, p1, Landroid/view/InsetsSourceControl;->mType:I

    iput v0, p0, Landroid/view/InsetsSourceControl;->mType:I

    .line 76
    iget-object v0, p1, Landroid/view/InsetsSourceControl;->mLeash:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_1b

    .line 77
    new-instance v0, Landroid/view/SurfaceControl;

    iget-object v1, p1, Landroid/view/InsetsSourceControl;->mLeash:Landroid/view/SurfaceControl;

    const-string v2, "InsetsSourceControl"

    invoke-direct {v0, v1, v2}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceControl;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/view/InsetsSourceControl;->mLeash:Landroid/view/SurfaceControl;

    goto :goto_1e

    .line 79
    :cond_1b
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/InsetsSourceControl;->mLeash:Landroid/view/SurfaceControl;

    .line 81
    :goto_1e
    iget-boolean v0, p1, Landroid/view/InsetsSourceControl;->mInitiallyVisible:Z

    iput-boolean v0, p0, Landroid/view/InsetsSourceControl;->mInitiallyVisible:Z

    .line 82
    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p1, Landroid/view/InsetsSourceControl;->mSurfacePosition:Landroid/graphics/Point;

    invoke-direct {v0, v1}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    iput-object v0, p0, Landroid/view/InsetsSourceControl;->mSurfacePosition:Landroid/graphics/Point;

    .line 83
    iget-object v0, p1, Landroid/view/InsetsSourceControl;->mInsetsHint:Landroid/graphics/Insets;

    iput-object v0, p0, Landroid/view/InsetsSourceControl;->mInsetsHint:Landroid/graphics/Insets;

    .line 84
    invoke-virtual {p1}, Landroid/view/InsetsSourceControl;->getAndClearSkipAnimationOnce()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/InsetsSourceControl;->mSkipAnimationOnce:Z

    .line 85
    invoke-virtual {p1}, Landroid/view/InsetsSourceControl;->getImeStatsToken()Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v0

    iput-object v0, p0, Landroid/view/InsetsSourceControl;->mImeStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    .line 86
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 181
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 240
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 241
    const-string v0, "InsetsSourceControl mId="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/view/InsetsSourceControl;->mId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 242
    const-string v0, " mType="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/view/InsetsSourceControl;->mType:I

    invoke-static {v0}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 243
    const-string v0, " mLeash="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/InsetsSourceControl;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 244
    const-string v0, " mInitiallyVisible="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/view/InsetsSourceControl;->mInitiallyVisible:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 245
    const-string v0, " mSurfacePosition="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/InsetsSourceControl;->mSurfacePosition:Landroid/graphics/Point;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 246
    const-string v0, " mInsetsHint="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/InsetsSourceControl;->mInsetsHint:Landroid/graphics/Insets;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 247
    const-string v0, " mSkipAnimationOnce="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/view/InsetsSourceControl;->mSkipAnimationOnce:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 248
    const-string v0, " mImeStatsToken="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/InsetsSourceControl;->mImeStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 249
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 250
    return-void
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 11
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 269
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 270
    .local v0, "token":J
    const-wide v2, 0x10b00000002L

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 271
    .local v2, "surfaceToken":J
    iget-object v4, p0, Landroid/view/InsetsSourceControl;->mSurfacePosition:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    const-wide v5, 0x10500000001L

    invoke-virtual {p1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 272
    iget-object v4, p0, Landroid/view/InsetsSourceControl;->mSurfacePosition:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    const-wide v5, 0x10500000002L

    invoke-virtual {p1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 273
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 275
    iget-object v4, p0, Landroid/view/InsetsSourceControl;->mLeash:Landroid/view/SurfaceControl;

    if-eqz v4, :cond_36

    .line 276
    iget-object v4, p0, Landroid/view/InsetsSourceControl;->mLeash:Landroid/view/SurfaceControl;

    const-wide v5, 0x10b00000003L

    invoke-virtual {v4, p1, v5, v6}, Landroid/view/SurfaceControl;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 279
    :cond_36
    const-wide v4, 0x10500000004L

    iget v6, p0, Landroid/view/InsetsSourceControl;->mType:I

    invoke-virtual {p1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 280
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 281
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "o"    # Ljava/lang/Object;

    .line 204
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 205
    return v0

    .line 207
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_58

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_58

    .line 210
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/view/InsetsSourceControl;

    .line 211
    .local v2, "that":Landroid/view/InsetsSourceControl;
    iget-object v3, v2, Landroid/view/InsetsSourceControl;->mLeash:Landroid/view/SurfaceControl;

    .line 212
    .local v3, "thatLeash":Landroid/view/SurfaceControl;
    iget v4, p0, Landroid/view/InsetsSourceControl;->mId:I

    iget v5, v2, Landroid/view/InsetsSourceControl;->mId:I

    if-ne v4, v5, :cond_56

    iget v4, p0, Landroid/view/InsetsSourceControl;->mType:I

    iget v5, v2, Landroid/view/InsetsSourceControl;->mType:I

    if-ne v4, v5, :cond_56

    iget-object v4, p0, Landroid/view/InsetsSourceControl;->mLeash:Landroid/view/SurfaceControl;

    if-eq v4, v3, :cond_35

    iget-object v4, p0, Landroid/view/InsetsSourceControl;->mLeash:Landroid/view/SurfaceControl;

    if-eqz v4, :cond_56

    if-eqz v3, :cond_56

    iget-object v4, p0, Landroid/view/InsetsSourceControl;->mLeash:Landroid/view/SurfaceControl;

    .line 215
    invoke-virtual {v4, v3}, Landroid/view/SurfaceControl;->isSameSurface(Landroid/view/SurfaceControl;)Z

    move-result v4

    if-eqz v4, :cond_56

    :cond_35
    iget-boolean v4, p0, Landroid/view/InsetsSourceControl;->mInitiallyVisible:Z

    iget-boolean v5, v2, Landroid/view/InsetsSourceControl;->mInitiallyVisible:Z

    if-ne v4, v5, :cond_56

    iget-object v4, p0, Landroid/view/InsetsSourceControl;->mSurfacePosition:Landroid/graphics/Point;

    iget-object v5, v2, Landroid/view/InsetsSourceControl;->mSurfacePosition:Landroid/graphics/Point;

    .line 217
    invoke-virtual {v4, v5}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_56

    iget-object v4, p0, Landroid/view/InsetsSourceControl;->mInsetsHint:Landroid/graphics/Insets;

    iget-object v5, v2, Landroid/view/InsetsSourceControl;->mInsetsHint:Landroid/graphics/Insets;

    .line 218
    invoke-virtual {v4, v5}, Landroid/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_56

    iget-boolean v4, p0, Landroid/view/InsetsSourceControl;->mSkipAnimationOnce:Z

    iget-boolean v5, v2, Landroid/view/InsetsSourceControl;->mSkipAnimationOnce:Z

    if-ne v4, v5, :cond_56

    goto :goto_57

    :cond_56
    move v0, v1

    .line 212
    :goto_57
    return v0

    .line 208
    .end local v2    # "that":Landroid/view/InsetsSourceControl;
    .end local v3    # "thatLeash":Landroid/view/SurfaceControl;
    :cond_58
    :goto_58
    return v1
.end method

.method public blacklist getAndClearSkipAnimationOnce()Z
    .registers 3

    .line 161
    iget-boolean v0, p0, Landroid/view/InsetsSourceControl;->mSkipAnimationOnce:Z

    .line 162
    .local v0, "result":Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/InsetsSourceControl;->mSkipAnimationOnce:Z

    .line 163
    return v0
.end method

.method public blacklist getId()I
    .registers 2

    .line 100
    iget v0, p0, Landroid/view/InsetsSourceControl;->mId:I

    return v0
.end method

.method public blacklist getImeStatsToken()Landroid/view/inputmethod/ImeTracker$Token;
    .registers 2

    .line 168
    iget-object v0, p0, Landroid/view/InsetsSourceControl;->mImeStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    return-object v0
.end method

.method public blacklist getInsetsHint()Landroid/graphics/Insets;
    .registers 2

    .line 142
    iget-object v0, p0, Landroid/view/InsetsSourceControl;->mInsetsHint:Landroid/graphics/Insets;

    return-object v0
.end method

.method public blacklist getLeash()Landroid/view/SurfaceControl;
    .registers 2

    .line 114
    iget-object v0, p0, Landroid/view/InsetsSourceControl;->mLeash:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method public blacklist getSurfacePosition()Landroid/graphics/Point;
    .registers 2

    .line 130
    iget-object v0, p0, Landroid/view/InsetsSourceControl;->mSurfacePosition:Landroid/graphics/Point;

    return-object v0
.end method

.method public blacklist getType()I
    .registers 2

    .line 104
    iget v0, p0, Landroid/view/InsetsSourceControl;->mType:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 10

    .line 224
    iget v0, p0, Landroid/view/InsetsSourceControl;->mId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Landroid/view/InsetsSourceControl;->mType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Landroid/view/InsetsSourceControl;->mLeash:Landroid/view/SurfaceControl;

    iget-boolean v0, p0, Landroid/view/InsetsSourceControl;->mInitiallyVisible:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-object v5, p0, Landroid/view/InsetsSourceControl;->mSurfacePosition:Landroid/graphics/Point;

    iget-object v6, p0, Landroid/view/InsetsSourceControl;->mInsetsHint:Landroid/graphics/Insets;

    iget-boolean v0, p0, Landroid/view/InsetsSourceControl;->mSkipAnimationOnce:Z

    .line 225
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iget-object v8, p0, Landroid/view/InsetsSourceControl;->mImeStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    filled-new-array/range {v1 .. v8}, [Ljava/lang/Object;

    move-result-object v0

    .line 224
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isFake()Z
    .registers 3

    .line 146
    iget-object v0, p0, Landroid/view/InsetsSourceControl;->mLeash:Landroid/view/SurfaceControl;

    if-nez v0, :cond_10

    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    iget-object v1, p0, Landroid/view/InsetsSourceControl;->mInsetsHint:Landroid/graphics/Insets;

    invoke-virtual {v0, v1}, Landroid/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public blacklist isInitiallyVisible()Z
    .registers 2

    .line 118
    iget-boolean v0, p0, Landroid/view/InsetsSourceControl;->mInitiallyVisible:Z

    return v0
.end method

.method public blacklist release(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/view/SurfaceControl;",
            ">;)V"
        }
    .end annotation

    .line 197
    .local p1, "surfaceReleaseConsumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/view/SurfaceControl;>;"
    iget-object v0, p0, Landroid/view/InsetsSourceControl;->mLeash:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/view/InsetsSourceControl;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 198
    iget-object v0, p0, Landroid/view/InsetsSourceControl;->mLeash:Landroid/view/SurfaceControl;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 200
    :cond_11
    return-void
.end method

.method public blacklist setImeStatsToken(Landroid/view/inputmethod/ImeTracker$Token;)V
    .registers 2
    .param p1, "imeStatsToken"    # Landroid/view/inputmethod/ImeTracker$Token;

    .line 172
    iput-object p1, p0, Landroid/view/InsetsSourceControl;->mImeStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    .line 173
    return-void
.end method

.method public blacklist setInsetsHint(IIII)V
    .registers 6
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 138
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v0

    iput-object v0, p0, Landroid/view/InsetsSourceControl;->mInsetsHint:Landroid/graphics/Insets;

    .line 139
    return-void
.end method

.method public blacklist setInsetsHint(Landroid/graphics/Insets;)V
    .registers 2
    .param p1, "insets"    # Landroid/graphics/Insets;

    .line 134
    iput-object p1, p0, Landroid/view/InsetsSourceControl;->mInsetsHint:Landroid/graphics/Insets;

    .line 135
    return-void
.end method

.method public blacklist setParcelableFlags(I)V
    .registers 2
    .param p1, "parcelableFlags"    # I

    .line 176
    iput p1, p0, Landroid/view/InsetsSourceControl;->mParcelableFlags:I

    .line 177
    return-void
.end method

.method public blacklist setSkipAnimationOnce(Z)V
    .registers 2
    .param p1, "skipAnimation"    # Z

    .line 150
    iput-boolean p1, p0, Landroid/view/InsetsSourceControl;->mSkipAnimationOnce:Z

    .line 151
    return-void
.end method

.method public blacklist setSurfacePosition(II)Z
    .registers 4
    .param p1, "left"    # I
    .param p2, "top"    # I

    .line 122
    iget-object v0, p0, Landroid/view/InsetsSourceControl;->mSurfacePosition:Landroid/graphics/Point;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Point;->equals(II)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 123
    const/4 v0, 0x0

    return v0

    .line 125
    :cond_a
    iget-object v0, p0, Landroid/view/InsetsSourceControl;->mSurfacePosition:Landroid/graphics/Point;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Point;->set(II)V

    .line 126
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InsetsSourceControl: {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/InsetsSourceControl;->mId:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/InsetsSourceControl;->mType:I

    .line 231
    invoke-static {v1}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 232
    iget-boolean v1, p0, Landroid/view/InsetsSourceControl;->mInitiallyVisible:Z

    const-string v2, ""

    if-eqz v1, :cond_2e

    const-string v1, " initiallyVisible"

    goto :goto_2f

    :cond_2e
    move-object v1, v2

    :goto_2f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mSurfacePosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/InsetsSourceControl;->mSurfacePosition:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mInsetsHint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/InsetsSourceControl;->mInsetsHint:Landroid/graphics/Insets;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 235
    iget-boolean v1, p0, Landroid/view/InsetsSourceControl;->mSkipAnimationOnce:Z

    if-eqz v1, :cond_51

    const-string v2, " skipAnimationOnce"

    :cond_51
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 230
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 186
    iget v0, p0, Landroid/view/InsetsSourceControl;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    iget v0, p0, Landroid/view/InsetsSourceControl;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 188
    iget-object v0, p0, Landroid/view/InsetsSourceControl;->mLeash:Landroid/view/SurfaceControl;

    iget v1, p0, Landroid/view/InsetsSourceControl;->mParcelableFlags:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 189
    iget-boolean v0, p0, Landroid/view/InsetsSourceControl;->mInitiallyVisible:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 190
    iget-object v0, p0, Landroid/view/InsetsSourceControl;->mSurfacePosition:Landroid/graphics/Point;

    iget v1, p0, Landroid/view/InsetsSourceControl;->mParcelableFlags:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 191
    iget-object v0, p0, Landroid/view/InsetsSourceControl;->mInsetsHint:Landroid/graphics/Insets;

    iget v1, p0, Landroid/view/InsetsSourceControl;->mParcelableFlags:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 192
    iget-boolean v0, p0, Landroid/view/InsetsSourceControl;->mSkipAnimationOnce:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 193
    iget-object v0, p0, Landroid/view/InsetsSourceControl;->mImeStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    iget v1, p0, Landroid/view/InsetsSourceControl;->mParcelableFlags:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 194
    return-void
.end method
