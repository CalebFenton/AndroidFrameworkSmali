.class public final Lcom/android/internal/util/dump/DumpableContainerImpl;
.super Ljava/lang/Object;
.source "DumpableContainerImpl.java"

# interfaces
.implements Landroid/util/DumpableContainer;


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mDumpables:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/Dumpable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 38
    const-class v0, Lcom/android/internal/util/dump/DumpableContainerImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/dump/DumpableContainerImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/dump/DumpableContainerImpl;->mDumpables:Landroid/util/ArrayMap;

    return-void
.end method

.method private blacklist dumpNumberDumpables(Landroid/util/IndentingPrintWriter;)I
    .registers 4
    .param p1, "writer"    # Landroid/util/IndentingPrintWriter;

    .line 101
    iget-object v0, p0, Lcom/android/internal/util/dump/DumpableContainerImpl;->mDumpables:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 102
    .local v0, "size":I
    if-nez v0, :cond_e

    .line 103
    const-string v1, "No dumpables"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_16

    .line 105
    :cond_e
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v1, " dumpables"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 107
    :goto_16
    return v0
.end method

.method private blacklist indentAndDump(Landroid/util/IndentingPrintWriter;Landroid/util/Dumpable;[Ljava/lang/String;)V
    .registers 5
    .param p1, "writer"    # Landroid/util/IndentingPrintWriter;
    .param p2, "dumpable"    # Landroid/util/Dumpable;
    .param p3, "args"    # [Ljava/lang/String;

    .line 150
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 152
    :try_start_3
    invoke-interface {p2, p1, p3}, Landroid/util/Dumpable;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_b

    .line 154
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 155
    nop

    .line 156
    return-void

    .line 154
    :catchall_b
    move-exception v0

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 155
    throw v0
.end method

.method static synthetic blacklist lambda$addDumpable$0(Landroid/util/Dumpable;)Ljava/lang/String;
    .registers 3
    .param p0, "dumpable"    # Landroid/util/Dumpable;

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "name of"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist addDumpable(Landroid/util/Dumpable;)Z
    .registers 4
    .param p1, "dumpable"    # Landroid/util/Dumpable;

    .line 46
    const-string v0, "dumpable"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 47
    invoke-interface {p1}, Landroid/util/Dumpable;->getDumpableName()Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "name":Ljava/lang/String;
    new-instance v1, Lcom/android/internal/util/dump/DumpableContainerImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/android/internal/util/dump/DumpableContainerImpl$$ExternalSyntheticLambda0;-><init>(Landroid/util/Dumpable;)V

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    .line 50
    iget-object v1, p0, Lcom/android/internal/util/dump/DumpableContainerImpl;->mDumpables:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 55
    const/4 v1, 0x0

    return v1

    .line 61
    :cond_1b
    iget-object v1, p0, Lcom/android/internal/util/dump/DumpableContainerImpl;->mDumpables:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const/4 v1, 0x1

    return v1
.end method

.method public blacklist dumpAllDumpables(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 133
    new-instance v0, Landroid/util/IndentingPrintWriter;

    invoke-direct {v0, p2, p1, p1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    .local v0, "ipw":Landroid/util/IndentingPrintWriter;
    invoke-direct {p0, v0}, Lcom/android/internal/util/dump/DumpableContainerImpl;->dumpNumberDumpables(Landroid/util/IndentingPrintWriter;)I

    move-result v1

    .line 135
    .local v1, "size":I
    if-nez v1, :cond_f

    .line 136
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 137
    return-void

    .line 139
    :cond_f
    const-string v2, ":"

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 141
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_15
    if-ge v2, v1, :cond_3d

    .line 142
    iget-object v3, p0, Lcom/android/internal/util/dump/DumpableContainerImpl;->mDumpables:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 143
    .local v3, "dumpableName":Ljava/lang/String;
    const/16 v4, 0x23

    invoke-virtual {v0, v4}, Landroid/util/IndentingPrintWriter;->print(C)V

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v4, ": "

    invoke-virtual {v0, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 144
    iget-object v4, p0, Lcom/android/internal/util/dump/DumpableContainerImpl;->mDumpables:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Dumpable;

    .line 145
    .local v4, "dumpable":Landroid/util/Dumpable;
    invoke-direct {p0, v0, v4, p3}, Lcom/android/internal/util/dump/DumpableContainerImpl;->indentAndDump(Landroid/util/IndentingPrintWriter;Landroid/util/Dumpable;[Ljava/lang/String;)V

    .line 141
    .end local v3    # "dumpableName":Ljava/lang/String;
    .end local v4    # "dumpable":Landroid/util/Dumpable;
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 147
    .end local v2    # "i":I
    :cond_3d
    return-void
.end method

.method public blacklist dumpOneDumpable(Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 8
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "dumpableName"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/String;

    .line 164
    new-instance v0, Landroid/util/IndentingPrintWriter;

    invoke-direct {v0, p2, p1, p1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    .local v0, "ipw":Landroid/util/IndentingPrintWriter;
    iget-object v1, p0, Lcom/android/internal/util/dump/DumpableContainerImpl;->mDumpables:Landroid/util/ArrayMap;

    invoke-virtual {v1, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Dumpable;

    .line 166
    .local v1, "dumpable":Landroid/util/Dumpable;
    if-nez v1, :cond_18

    .line 167
    const-string v2, "No "

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 168
    return-void

    .line 170
    :cond_18
    invoke-virtual {v0, p3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->println(C)V

    .line 171
    invoke-direct {p0, v0, v1, p4}, Lcom/android/internal/util/dump/DumpableContainerImpl;->indentAndDump(Landroid/util/IndentingPrintWriter;Landroid/util/Dumpable;[Ljava/lang/String;)V

    .line 172
    return-void
.end method

.method public blacklist listDumpables(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 7
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;

    .line 114
    new-instance v0, Landroid/util/IndentingPrintWriter;

    invoke-direct {v0, p2, p1, p1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .local v0, "ipw":Landroid/util/IndentingPrintWriter;
    invoke-direct {p0, v0}, Lcom/android/internal/util/dump/DumpableContainerImpl;->dumpNumberDumpables(Landroid/util/IndentingPrintWriter;)I

    move-result v1

    .line 117
    .local v1, "size":I
    if-nez v1, :cond_f

    .line 118
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 119
    return-void

    .line 121
    :cond_f
    const-string v2, ": "

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 122
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_15
    if-ge v2, v1, :cond_2e

    .line 123
    iget-object v3, p0, Lcom/android/internal/util/dump/DumpableContainerImpl;->mDumpables:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 124
    add-int/lit8 v3, v1, -0x1

    if-ge v2, v3, :cond_2b

    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Landroid/util/IndentingPrintWriter;->print(C)V

    .line 122
    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 126
    .end local v2    # "i":I
    :cond_2e
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 127
    return-void
.end method

.method public whitelist removeDumpable(Landroid/util/Dumpable;)Z
    .registers 8
    .param p1, "dumpable"    # Landroid/util/Dumpable;

    .line 67
    const-string v0, "dumpable"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 68
    invoke-interface {p1}, Landroid/util/Dumpable;->getDumpableName()Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "name":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 73
    return v1

    .line 76
    :cond_d
    iget-object v2, p0, Lcom/android/internal/util/dump/DumpableContainerImpl;->mDumpables:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Dumpable;

    .line 77
    .local v2, "candidate":Landroid/util/Dumpable;
    if-nez v2, :cond_18

    .line 81
    return v1

    .line 85
    :cond_18
    if-eq v2, p1, :cond_48

    .line 86
    sget-object v3, Lcom/android/internal/util/dump/DumpableContainerImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removeDumpable(): passed dumpable ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") named "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", but internal dumpable with that name is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    return v1

    .line 93
    :cond_48
    iget-object v1, p0, Lcom/android/internal/util/dump/DumpableContainerImpl;->mDumpables:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const/4 v1, 0x1

    return v1
.end method
