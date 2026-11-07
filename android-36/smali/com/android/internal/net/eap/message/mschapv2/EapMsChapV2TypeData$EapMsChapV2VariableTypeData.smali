.class abstract Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2VariableTypeData;
.super Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData;
.source "EapMsChapV2TypeData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "EapMsChapV2VariableTypeData"
.end annotation


# instance fields
.field public final blacklist msChapV2Id:I

.field public final blacklist msLength:I


# direct methods
.method constructor blacklist <init>(III)V
    .registers 4
    .param p1, "opCode"    # I
    .param p2, "msChapV2Id"    # I
    .param p3, "msLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/net/eap/exceptions/mschapv2/EapMsChapV2ParsingException;
        }
    .end annotation

    .line 94
    invoke-direct {p0, p1}, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData;-><init>(I)V

    .line 96
    iput p2, p0, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2VariableTypeData;->msChapV2Id:I

    .line 97
    iput p3, p0, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2VariableTypeData;->msLength:I

    .line 98
    return-void
.end method
