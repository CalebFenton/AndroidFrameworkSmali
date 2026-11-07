.class abstract Lcom/android/internal/telephony/util/DnsSvcbRecord$SvcParam;
.super Ljava/lang/Object;
.source "DnsSvcbRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/util/DnsSvcbRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "SvcParam"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final blacklist mKey:I


# direct methods
.method constructor blacklist <init>(I)V
    .registers 2

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    iput p1, p0, Lcom/android/internal/telephony/util/DnsSvcbRecord$SvcParam;->mKey:I

    return-void
.end method


# virtual methods
.method blacklist getKey()I
    .registers 1

    .line 241
    iget p0, p0, Lcom/android/internal/telephony/util/DnsSvcbRecord$SvcParam;->mKey:I

    return p0
.end method
