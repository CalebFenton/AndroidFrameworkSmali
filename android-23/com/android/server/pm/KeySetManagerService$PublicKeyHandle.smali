.class Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;
.super Ljava/lang/Object;
.source "KeySetManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/KeySetManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PublicKeyHandle"
.end annotation


# instance fields
.field private final mId:J

.field private final mKey:Ljava/security/PublicKey;

.field private mRefCount:I

.field final synthetic this$0:Lcom/android/server/pm/KeySetManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/pm/KeySetManagerService;JILjava/security/PublicKey;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/KeySetManagerService;
    .param p2, "id"    # J
    .param p4, "refCount"    # I
    .param p5, "key"    # Ljava/security/PublicKey;

    #@0
    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;->this$0:Lcom/android/server/pm/KeySetManagerService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 83
    iput-wide p2, p0, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;->mId:J

    #@7
    .line 84
    iput p4, p0, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;->mRefCount:I

    #@9
    .line 85
    iput-object p5, p0, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;->mKey:Ljava/security/PublicKey;

    #@b
    .line 82
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/KeySetManagerService;JILjava/security/PublicKey;Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/KeySetManagerService;
    .param p2, "id"    # J
    .param p4, "refCount"    # I
    .param p5, "key"    # Ljava/security/PublicKey;

    #@0
    .prologue
    invoke-direct/range {p0 .. p5}, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;-><init>(Lcom/android/server/pm/KeySetManagerService;JILjava/security/PublicKey;)V

    #@3
    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/KeySetManagerService;JLjava/security/PublicKey;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/pm/KeySetManagerService;
    .param p2, "id"    # J
    .param p4, "key"    # Ljava/security/PublicKey;

    #@0
    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;->this$0:Lcom/android/server/pm/KeySetManagerService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 74
    iput-wide p2, p0, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;->mId:J

    #@7
    .line 75
    const/4 v0, 0x1

    #@8
    iput v0, p0, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;->mRefCount:I

    #@a
    .line 76
    iput-object p4, p0, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;->mKey:Ljava/security/PublicKey;

    #@c
    .line 73
    return-void
.end method


# virtual methods
.method public decrRefCountLPw()J
    .locals 2

    #@0
    .prologue
    .line 106
    iget v0, p0, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;->mRefCount:I

    #@2
    add-int/lit8 v0, v0, -0x1

    #@4
    iput v0, p0, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;->mRefCount:I

    #@6
    .line 107
    iget v0, p0, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;->mRefCount:I

    #@8
    int-to-long v0, v0

    #@9
    return-wide v0
.end method

.method public getId()J
    .locals 2

    #@0
    .prologue
    .line 89
    iget-wide v0, p0, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;->mId:J

    #@2
    return-wide v0
.end method

.method public getKey()Ljava/security/PublicKey;
    .locals 1

    #@0
    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;->mKey:Ljava/security/PublicKey;

    #@2
    return-object v0
.end method

.method public getRefCountLPr()I
    .locals 1

    #@0
    .prologue
    .line 97
    iget v0, p0, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;->mRefCount:I

    #@2
    return v0
.end method

.method public incrRefCountLPw()V
    .locals 1

    #@0
    .prologue
    .line 101
    iget v0, p0, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;->mRefCount:I

    #@2
    add-int/lit8 v0, v0, 0x1

    #@4
    iput v0, p0, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;->mRefCount:I

    #@6
    .line 102
    return-void
.end method
