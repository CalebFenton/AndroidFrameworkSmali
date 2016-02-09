.class Lcom/android/internal/telephony/cdma/EriManager$EriFile;
.super Ljava/lang/Object;
.source "EriManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/EriManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EriFile"
.end annotation


# instance fields
.field mCallPromptId:[Ljava/lang/String;

.field mEriFileType:I

.field mNumberOfEriEntries:I

.field mRoamIndTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/cdma/EriInfo;",
            ">;"
        }
    .end annotation
.end field

.field mVersionNumber:I

.field final synthetic this$0:Lcom/android/internal/telephony/cdma/EriManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/EriManager;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/internal/telephony/cdma/EriManager;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v0, -0x1

    #@2
    .line 53
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->this$0:Lcom/android/internal/telephony/cdma/EriManager;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    .line 54
    iput v0, p0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mVersionNumber:I

    #@9
    .line 55
    iput v2, p0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mNumberOfEriEntries:I

    #@b
    .line 56
    iput v0, p0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mEriFileType:I

    #@d
    .line 57
    const/4 v0, 0x3

    #@e
    new-array v0, v0, [Ljava/lang/String;

    #@10
    const-string/jumbo v1, ""

    #@13
    aput-object v1, v0, v2

    #@15
    const-string/jumbo v1, ""

    #@18
    const/4 v2, 0x1

    #@19
    aput-object v1, v0, v2

    #@1b
    const-string/jumbo v1, ""

    #@1e
    const/4 v2, 0x2

    #@1f
    aput-object v1, v0, v2

    #@21
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mCallPromptId:[Ljava/lang/String;

    #@23
    .line 58
    new-instance v0, Ljava/util/HashMap;

    #@25
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@28
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mRoamIndTable:Ljava/util/HashMap;

    #@2a
    .line 53
    return-void
.end method
