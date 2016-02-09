.class public final enum Lcom/android/internal/telephony/dataconnection/DcAsyncChannel$LinkPropertyChangeAction;
.super Ljava/lang/Enum;
.source "DcAsyncChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LinkPropertyChangeAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/dataconnection/DcAsyncChannel$LinkPropertyChangeAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/dataconnection/DcAsyncChannel$LinkPropertyChangeAction;

.field public static final enum CHANGED:Lcom/android/internal/telephony/dataconnection/DcAsyncChannel$LinkPropertyChangeAction;

.field public static final enum NONE:Lcom/android/internal/telephony/dataconnection/DcAsyncChannel$LinkPropertyChangeAction;

.field public static final enum RESET:Lcom/android/internal/telephony/dataconnection/DcAsyncChannel$LinkPropertyChangeAction;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x2

    #@1
    const/4 v3, 0x1

    #@2
    const/4 v2, 0x0

    #@3
    .line 98
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel$LinkPropertyChangeAction;

    #@5
    const-string/jumbo v1, "NONE"

    #@8
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel$LinkPropertyChangeAction;-><init>(Ljava/lang/String;I)V

    #@b
    sput-object v0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel$LinkPropertyChangeAction;->NONE:Lcom/android/internal/telephony/dataconnection/DcAsyncChannel$LinkPropertyChangeAction;

    #@d
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel$LinkPropertyChangeAction;

    #@f
    const-string/jumbo v1, "CHANGED"

    #@12
    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel$LinkPropertyChangeAction;-><init>(Ljava/lang/String;I)V

    #@15
    sput-object v0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel$LinkPropertyChangeAction;->CHANGED:Lcom/android/internal/telephony/dataconnection/DcAsyncChannel$LinkPropertyChangeAction;

    #@17
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel$LinkPropertyChangeAction;

    #@19
    const-string/jumbo v1, "RESET"

    #@1c
    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel$LinkPropertyChangeAction;-><init>(Ljava/lang/String;I)V

    #@1f
    sput-object v0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel$LinkPropertyChangeAction;->RESET:Lcom/android/internal/telephony/dataconnection/DcAsyncChannel$LinkPropertyChangeAction;

    #@21
    .line 97
    const/4 v0, 0x3

    #@22
    new-array v0, v0, [Lcom/android/internal/telephony/dataconnection/DcAsyncChannel$LinkPropertyChangeAction;

    #@24
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel$LinkPropertyChangeAction;->NONE:Lcom/android/internal/telephony/dataconnection/DcAsyncChannel$LinkPropertyChangeAction;

    #@26
    aput-object v1, v0, v2

    #@28
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel$LinkPropertyChangeAction;->CHANGED:Lcom/android/internal/telephony/dataconnection/DcAsyncChannel$LinkPropertyChangeAction;

    #@2a
    aput-object v1, v0, v3

    #@2c
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel$LinkPropertyChangeAction;->RESET:Lcom/android/internal/telephony/dataconnection/DcAsyncChannel$LinkPropertyChangeAction;

    #@2e
    aput-object v1, v0, v4

    #@30
    sput-object v0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel$LinkPropertyChangeAction;->$VALUES:[Lcom/android/internal/telephony/dataconnection/DcAsyncChannel$LinkPropertyChangeAction;

    #@32
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static fromInt(I)Lcom/android/internal/telephony/dataconnection/DcAsyncChannel$LinkPropertyChangeAction;
    .locals 3
    .param p0, "value"    # I

    #@0
    .prologue
    .line 101
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel$LinkPropertyChangeAction;->NONE:Lcom/android/internal/telephony/dataconnection/DcAsyncChannel$LinkPropertyChangeAction;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel$LinkPropertyChangeAction;->ordinal()I

    #@5
    move-result v0

    #@6
    if-ne p0, v0, :cond_0

    #@8
    .line 102
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel$LinkPropertyChangeAction;->NONE:Lcom/android/internal/telephony/dataconnection/DcAsyncChannel$LinkPropertyChangeAction;

    #@a
    return-object v0

    #@b
    .line 103
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel$LinkPropertyChangeAction;->CHANGED:Lcom/android/internal/telephony/dataconnection/DcAsyncChannel$LinkPropertyChangeAction;

    #@d
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel$LinkPropertyChangeAction;->ordinal()I

    #@10
    move-result v0

    #@11
    if-ne p0, v0, :cond_1

    #@13
    .line 104
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel$LinkPropertyChangeAction;->CHANGED:Lcom/android/internal/telephony/dataconnection/DcAsyncChannel$LinkPropertyChangeAction;

    #@15
    return-object v0

    #@16
    .line 105
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel$LinkPropertyChangeAction;->RESET:Lcom/android/internal/telephony/dataconnection/DcAsyncChannel$LinkPropertyChangeAction;

    #@18
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel$LinkPropertyChangeAction;->ordinal()I

    #@1b
    move-result v0

    #@1c
    if-ne p0, v0, :cond_2

    #@1e
    .line 106
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel$LinkPropertyChangeAction;->RESET:Lcom/android/internal/telephony/dataconnection/DcAsyncChannel$LinkPropertyChangeAction;

    #@20
    return-object v0

    #@21
    .line 108
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    #@23
    new-instance v1, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string/jumbo v2, "LinkPropertyChangeAction.fromInt: bad value="

    #@2b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@32
    move-result-object v1

    #@33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v1

    #@37
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@3a
    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/DcAsyncChannel$LinkPropertyChangeAction;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 97
    const-class v0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel$LinkPropertyChangeAction;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel$LinkPropertyChangeAction;

    #@8
    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/dataconnection/DcAsyncChannel$LinkPropertyChangeAction;
    .locals 1

    #@0
    .prologue
    .line 97
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel$LinkPropertyChangeAction;->$VALUES:[Lcom/android/internal/telephony/dataconnection/DcAsyncChannel$LinkPropertyChangeAction;

    #@2
    return-object v0
.end method
