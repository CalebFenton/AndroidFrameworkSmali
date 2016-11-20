.class Lcom/android/internal/telephony/IntRangeManager$IntRange;
.super Ljava/lang/Object;
.source "IntRangeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IntRangeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IntRange"
.end annotation


# instance fields
.field final mClients:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/IntRangeManager$ClientRange;",
            ">;"
        }
    .end annotation
.end field

.field mEndId:I

.field mStartId:I

.field final synthetic this$0:Lcom/android/internal/telephony/IntRangeManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/internal/telephony/IntRangeManager;
    .param p2, "startId"    # I
    .param p3, "endId"    # I
    .param p4, "client"    # Ljava/lang/String;

    #@0
    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->this$0:Lcom/android/internal/telephony/IntRangeManager;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 67
    iput p2, p0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    #@7
    .line 68
    iput p3, p0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    #@9
    .line 69
    new-instance v0, Ljava/util/ArrayList;

    #@b
    const/4 v1, 0x4

    #@c
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@f
    iput-object v0, p0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    #@11
    .line 70
    iget-object v0, p0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    #@13
    new-instance v1, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    #@15
    invoke-direct {v1, p1, p2, p3, p4}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    #@18
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1b
    .line 66
    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/IntRangeManager;Lcom/android/internal/telephony/IntRangeManager$ClientRange;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/internal/telephony/IntRangeManager;
    .param p2, "clientRange"    # Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    #@0
    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->this$0:Lcom/android/internal/telephony/IntRangeManager;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 78
    iget v0, p2, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mStartId:I

    #@7
    iput v0, p0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    #@9
    .line 79
    iget v0, p2, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mEndId:I

    #@b
    iput v0, p0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    #@d
    .line 80
    new-instance v0, Ljava/util/ArrayList;

    #@f
    const/4 v1, 0x4

    #@10
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@13
    iput-object v0, p0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    #@15
    .line 81
    iget-object v0, p0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    #@17
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1a
    .line 77
    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/IntRangeManager;Lcom/android/internal/telephony/IntRangeManager$IntRange;I)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/internal/telephony/IntRangeManager;
    .param p2, "intRange"    # Lcom/android/internal/telephony/IntRangeManager$IntRange;
    .param p3, "numElements"    # I

    #@0
    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->this$0:Lcom/android/internal/telephony/IntRangeManager;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 95
    iget v1, p2, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    #@7
    iput v1, p0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    #@9
    .line 96
    iget v1, p2, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    #@b
    iput v1, p0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    #@d
    .line 97
    new-instance v1, Ljava/util/ArrayList;

    #@f
    iget-object v2, p2, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    #@11
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@14
    move-result v2

    #@15
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    #@18
    iput-object v1, p0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    #@1a
    .line 98
    const/4 v0, 0x0

    #@1b
    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_0

    #@1d
    .line 99
    iget-object v2, p0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    #@1f
    iget-object v1, p2, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    #@21
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@24
    move-result-object v1

    #@25
    check-cast v1, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    #@27
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2a
    .line 98
    add-int/lit8 v0, v0, 0x1

    #@2c
    goto :goto_0

    #@2d
    .line 94
    :cond_0
    return-void
.end method


# virtual methods
.method insert(Lcom/android/internal/telephony/IntRangeManager$ClientRange;)V
    .locals 6
    .param p1, "range"    # Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    #@0
    .prologue
    .line 113
    iget-object v4, p0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v2

    #@6
    .line 114
    .local v2, "len":I
    const/4 v1, -0x1

    #@7
    .line 115
    .local v1, "insert":I
    const/4 v0, 0x0

    #@8
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_3

    #@a
    .line 116
    iget-object v4, p0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v3

    #@10
    check-cast v3, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    #@12
    .line 117
    .local v3, "nextRange":Lcom/android/internal/telephony/IntRangeManager$ClientRange;
    iget v4, p1, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mStartId:I

    #@14
    iget v5, v3, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mStartId:I

    #@16
    if-gt v4, v5, :cond_0

    #@18
    .line 119
    invoke-virtual {p1, v3}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->equals(Ljava/lang/Object;)Z

    #@1b
    move-result v4

    #@1c
    if-nez v4, :cond_2

    #@1e
    .line 121
    iget v4, p1, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mStartId:I

    #@20
    iget v5, v3, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mStartId:I

    #@22
    if-ne v4, v5, :cond_1

    #@24
    .line 122
    iget v4, p1, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mEndId:I

    #@26
    iget v5, v3, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mEndId:I

    #@28
    if-le v4, v5, :cond_1

    #@2a
    .line 123
    add-int/lit8 v1, v0, 0x1

    #@2c
    .line 124
    if-ge v1, v2, :cond_3

    #@2e
    .line 115
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@30
    goto :goto_0

    #@31
    .line 131
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    #@33
    invoke-virtual {v4, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    #@36
    .line 133
    :cond_2
    return-void

    #@37
    .line 136
    .end local v3    # "nextRange":Lcom/android/internal/telephony/IntRangeManager$ClientRange;
    :cond_3
    const/4 v4, -0x1

    #@38
    if-eq v1, v4, :cond_4

    #@3a
    if-ge v1, v2, :cond_4

    #@3c
    .line 137
    iget-object v4, p0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    #@3e
    invoke-virtual {v4, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    #@41
    .line 138
    return-void

    #@42
    .line 140
    :cond_4
    iget-object v4, p0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    #@44
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@47
    .line 112
    return-void
.end method
