.class Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter$StopException;
.super Ljava/lang/RuntimeException;
.source "IncrementalSAXSource_Filter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StopException"
.end annotation


# static fields
.field static final whitelist serialVersionUID:J = -0xfabe31191c14d4cL


# instance fields
.field final synthetic greylist this$0:Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;


# direct methods
.method constructor greylist <init>(Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 686
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter$StopException;->this$0:Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    return-void
.end method
