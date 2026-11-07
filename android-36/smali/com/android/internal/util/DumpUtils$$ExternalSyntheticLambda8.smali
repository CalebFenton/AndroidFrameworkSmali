.class public final synthetic Lcom/android/internal/util/DumpUtils$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/DumpUtils$KeyDumper;


# instance fields
.field public final synthetic blacklist f$0:Ljava/io/PrintWriter;

.field public final synthetic blacklist f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/util/DumpUtils$$ExternalSyntheticLambda8;->f$0:Ljava/io/PrintWriter;

    iput-object p2, p0, Lcom/android/internal/util/DumpUtils$$ExternalSyntheticLambda8;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final blacklist dump(II)V
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/android/internal/util/DumpUtils$$ExternalSyntheticLambda8;->f$0:Ljava/io/PrintWriter;

    iget-object v1, p0, Lcom/android/internal/util/DumpUtils$$ExternalSyntheticLambda8;->f$1:Ljava/lang/String;

    invoke-static {v0, v1, p1, p2}, Lcom/android/internal/util/DumpUtils;->lambda$dumpSparseArrayValues$3(Ljava/io/PrintWriter;Ljava/lang/String;II)V

    return-void
.end method
