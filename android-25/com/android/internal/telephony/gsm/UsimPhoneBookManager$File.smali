.class Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$File;
.super Ljava/lang/Object;
.source "UsimPhoneBookManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "File"
.end annotation


# instance fields
.field private final mEfid:I

.field private final mIndex:I

.field private final mParentTag:I

.field private final mSfi:I

.field final synthetic this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;IIII)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;
    .param p2, "parentTag"    # I
    .param p3, "efid"    # I
    .param p4, "sfi"    # I
    .param p5, "index"    # I

    #@0
    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$File;->this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 98
    iput p2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$File;->mParentTag:I

    #@7
    .line 99
    iput p3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$File;->mEfid:I

    #@9
    .line 100
    iput p4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$File;->mSfi:I

    #@b
    .line 101
    iput p5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$File;->mIndex:I

    #@d
    .line 97
    return-void
.end method


# virtual methods
.method public getEfid()I
    .locals 1

    #@0
    .prologue
    .line 105
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$File;->mEfid:I

    #@2
    return v0
.end method

.method public getIndex()I
    .locals 1

    #@0
    .prologue
    .line 107
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$File;->mIndex:I

    #@2
    return v0
.end method

.method public getParentTag()I
    .locals 1

    #@0
    .prologue
    .line 104
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$File;->mParentTag:I

    #@2
    return v0
.end method

.method public getSfi()I
    .locals 1

    #@0
    .prologue
    .line 106
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$File;->mSfi:I

    #@2
    return v0
.end method
