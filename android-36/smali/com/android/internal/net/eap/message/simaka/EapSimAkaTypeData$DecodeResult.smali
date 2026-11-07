.class public Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData$DecodeResult;
.super Ljava/lang/Object;
.source "EapSimAkaTypeData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DecodeResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final blacklist atClientErrorCode:Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;

.field public final blacklist eapTypeData:Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;)V
    .registers 3
    .param p1, "atClientErrorCode"    # Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;

    .line 209
    .local p0, "this":Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData$DecodeResult;, "Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData$DecodeResult<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    iput-object p1, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData$DecodeResult;->atClientErrorCode:Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;

    .line 211
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData$DecodeResult;->eapTypeData:Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData;

    .line 212
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 204
    .local p0, "this":Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData$DecodeResult;, "Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData$DecodeResult<TT;>;"
    .local p1, "eapTypeData":Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    iput-object p1, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData$DecodeResult;->eapTypeData:Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData;

    .line 206
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData$DecodeResult;->atClientErrorCode:Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;

    .line 207
    return-void
.end method


# virtual methods
.method public blacklist isSuccessfulDecode()Z
    .registers 2

    .line 215
    .local p0, "this":Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData$DecodeResult;, "Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData$DecodeResult<TT;>;"
    iget-object v0, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData$DecodeResult;->eapTypeData:Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method
