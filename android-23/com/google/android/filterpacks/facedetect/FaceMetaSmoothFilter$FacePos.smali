.class public Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;
.super Ljava/lang/Object;
.source "FaceMetaSmoothFilter.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FacePos"
.end annotation


# instance fields
.field public face_x0:F

.field public face_x1:F

.field public face_y0:F

.field public face_y1:F

.field public id:I

.field public last_seen:J

.field public left_eye_x:F

.field public left_eye_y:F

.field public lower_lip_x:F

.field public lower_lip_y:F

.field public mouth_x:F

.field public mouth_y:F

.field public right_eye_x:F

.field public right_eye_y:F

.field public speed_x:F

.field public speed_y:F

.field final synthetic this$0:Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter;

.field public upper_lip_x:F

.field public upper_lip_y:F


# direct methods
.method public constructor <init>(Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter;

    #@0
    .prologue
    .line 44
    iput-object p1, p0, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->this$0:Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public clone()Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;
    .locals 3

    #@0
    .prologue
    .line 47
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@3
    move-result-object v1

    #@4
    check-cast v1, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    return-object v1

    #@7
    .line 48
    :catch_0
    move-exception v0

    #@8
    .line 49
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@a
    const-string/jumbo v2, "Clone not supported!"

    #@d
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@10
    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->clone()Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
